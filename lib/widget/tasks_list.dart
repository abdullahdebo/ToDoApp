// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:todaydo_app/widget/tasks_tile.dart';
import 'package:provider/provider.dart';
import 'package:todaydo_app/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksData>(
      builder: (context, taskdata, child) {
        return ListView.builder(
          itemCount: taskdata.tasks.length,
          itemBuilder: (context, index) {
            return TaskTile(
                isCheked: taskdata.tasks[index].isDone,
                taskTitle: taskdata.tasks[index].name,
                checkboxChanged: (newValue) {
                  taskdata.updateTask(taskdata.tasks[index]);
                });
          },
        );
      },
    );
  }
}
