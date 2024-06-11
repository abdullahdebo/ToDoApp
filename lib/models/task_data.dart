import 'package:flutter/material.dart';
import 'package:todaydo_app/models/task.dart';

class TasksData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Go shopping'),
    Task(name: 'Buy a Gift'),
    Task(name: 'Eat Burger'),
  ];
}
