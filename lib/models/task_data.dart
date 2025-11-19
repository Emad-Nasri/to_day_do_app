import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:to_day_do_app/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [];

  TaskData() {
    loadTasks();
  }

  // ---------------- LOAD TASKS ----------------
  Future<void> loadTasks() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? tasksString = prefs.getString('tasks');

    if (tasksString != null) {
      List decoded = jsonDecode(tasksString);
      tasks = decoded.map((taskMap) => Task.fromMap(taskMap)).toList();
      notifyListeners();
    }
  }

  // ---------------- SAVE TASKS ----------------
  Future<void> saveTasks() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List list = tasks.map((task) => task.toMap()).toList();
    await prefs.setString('tasks', jsonEncode(list));
  }

  // ---------------- CRUD FUNCTIONS ----------------
  void addTask(String newTaskTitle) {
    tasks.add(Task(name: newTaskTitle));
    saveTasks();
    notifyListeners();
  }

  void updateTask(Task task) {
    task.doneChange();
    saveTasks();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    saveTasks();
    notifyListeners();
  }
}
