import 'package:flutter/material.dart';
import 'package:todaydo_app/models/task.dart';
import 'package:todaydo_app/widget/tasks_tile.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    super.key,
  });

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Go shopping'),
    Task(name: 'Buy a Gift'),
    Task(name: 'Eat Burger'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
            isCheked: tasks[index].isDone,
            taskTitle: tasks[index].name,
            checkboxChanged: (newValue) {
              setState(() {
                tasks[index].doneChange();
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
