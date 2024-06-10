import 'package:flutter/material.dart';
import 'package:todaydo_app/models/task.dart';
import 'package:todaydo_app/widget/tasks_tile.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;
  TasksList(this.tasks);

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
            isCheked: widget.tasks[index].isDone,
            taskTitle: widget.tasks[index].name,
            checkboxChanged: (newValue) {
              setState(() {
                widget.tasks[index].doneChange();
              });
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
