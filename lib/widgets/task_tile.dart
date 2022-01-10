import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile(
      {Key? key,
      this.isChecked,
      this.taskTitle,
      this.checkboxCallback,
      this.longPressCallback})
      : super(key: key);

  final bool? isChecked;
  final String? taskTitle;
  final Function? checkboxCallback;
  final Function? longPressCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback as void Function(),
      title: Text(
        taskTitle!,
        style: TextStyle(
            decoration: isChecked! ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback as void Function(bool?)?,
      ),
    );
  }
}



// class TaskCheckbox extends StatelessWidget {
//   const TaskCheckbox({Key? key, this.checkboxState, this.toggleCheckboxState})
//       : super(key: key);

//   final bool? checkboxState;
//   final Function? toggleCheckboxState;

//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       activeColor: Colors.lightBlueAccent,
//       value: checkboxState,
//       onChanged: toggleCheckboxState as void Function(bool?)?,
//     );
//   }
// }
