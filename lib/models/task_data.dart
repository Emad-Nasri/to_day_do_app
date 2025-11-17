import 'package:flutter/material.dart';
import 'package:to_day_do_app/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Go shopping'),
    Task(name: 'Buy a gift'),
    Task(name: 'Repair the car'),
  ];
}
