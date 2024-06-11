// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:todaydo_app/widget/tasks_tile.dart';
import 'package:provider/provider.dart';
import 'package:todaydo_app/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Provider.of<TasksData>(context).tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
            isCheked: Provider.of<TasksData>(context).tasks[index].isDone,
            taskTitle: Provider.of<TasksData>(context).tasks[index].name,
            checkboxChanged: (newValue) {
              // setState(() {
              //   widget.tasks[index].doneChange();
              // });
            });
      },
    );
    // return ListView(
    //   children: [
    //     TaskTile(
    //       taskTitle: tasks[0].name,
    //       isCheked: tasks[0].isDone,
    //     ),
    //     TaskTile(
    //       taskTitle: tasks[1].name,
    //       isCheked: tasks[1].isDone,
    //     ),
    //     TaskTile(
    //       taskTitle: tasks[2].name,
    //       isCheked: tasks[2].isDone,
    //     ),
    //   ],
    // );
  }
}
