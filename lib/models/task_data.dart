import 'package:flutter/material.dart';
import 'package:to_day_do_app/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Go shopping'),
    Task(name: 'Buy a gift'),
    Task(name: 'Repair the car'),
  ];

  void addTask(String newTaskTitle) {
    tasks.add(Task(name: newTaskTitle));
    notifyListeners(); //تحديث كل الويدجيت
  }

  void updateTask(Task task) {
    task.doneChange();
    notifyListeners();
  }
}
