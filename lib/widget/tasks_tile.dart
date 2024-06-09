// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isCheked;
  final String taskTitle;
  final void Function(bool?) checkboxChanged;

  TaskTile(
      {required this.isCheked,
      required this.taskTitle,
      required this.checkboxChanged});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isCheked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal[600],
        value: isCheked,
        onChanged: checkboxChanged,
      ),
    );
  }
}
