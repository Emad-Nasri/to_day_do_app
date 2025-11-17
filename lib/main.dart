import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_day_do_app/models/task_data.dart';
import 'package:to_day_do_app/screens/tasks_screen.dart';

void main() {
  runApp(const TODayDoApp());
}

class TODayDoApp extends StatelessWidget {
  const TODayDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TasksScreen(),
      ),
    );
  }
}
