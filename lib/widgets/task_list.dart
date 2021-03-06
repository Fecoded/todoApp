import 'package:flutter/material.dart';
import './task_tile.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) => ListView.builder(
        itemBuilder: (context, index) {
          final task = taskData.tasks[index];
          return TaskTile(
            taskTitle: task.name,
            isChecked: task.isDone,
            checkboxCallback: (checkboxState) => taskData.updateTask(task),
            longPressCallback: () => taskData.deleteTask(task),
          );
        },
        itemCount: taskData.taskCount,
      ),
    );
  }
}
