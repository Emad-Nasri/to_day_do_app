import 'package:flutter/material.dart';
import 'package:to_day_do_app/screens/tasks_screen.dart';

void main() {
  runApp(const TODayDoApp());
}

class TODayDoApp extends StatelessWidget {
  const TODayDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: TasksScreen());
  }
}
