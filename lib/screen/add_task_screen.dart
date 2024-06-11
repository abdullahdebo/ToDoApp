// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unused_import

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todaydo_app/models/task_data.dart';

class AddTasksScreen extends StatelessWidget {
  final Function addTaskCallback;
  const AddTasksScreen(this.addTaskCallback, {super.key});

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.indigo[400],
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.teal[400],
                borderRadius: BorderRadius.circular(12)),
            child: InkWell(
              child: Center(
                child: Text(
                  'Add',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
              onTap: () {
                Provider.of<TasksData>(context, listen: false)
                    .addTask(newTaskTitle!);
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
