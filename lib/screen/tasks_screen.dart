// ignore_for_file: prefer__ructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todaydo_app/models/task.dart';
import 'package:todaydo_app/screen/add_task_screen.dart';

import '../widget/tasks_list.dart';

class TasksScreen extends StatefulWidget {
  TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<Task> tasks = [
    Task(name: 'Go shopping'),
    Task(name: 'Buy a Gift'),
    Task(name: 'Eat Burger'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => SingleChildScrollView(
                child: Container(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: AddTasksScreen())),
          );
        },
        backgroundColor: Colors.indigo[400],
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.teal[400],
      body: Container(
        padding: EdgeInsets.only(
          top: MediaQuery.sizeOf(context).height / 17,
          left: MediaQuery.sizeOf(context).width / 20,
          right: MediaQuery.sizeOf(context).width / 20,
          bottom: MediaQuery.sizeOf(context).height / 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.playlist_add_check,
                  color: Colors.white,
                  size: 40,
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  'ToDayDo',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Text(
              '4 Tasks',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: TasksList(tasks),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
