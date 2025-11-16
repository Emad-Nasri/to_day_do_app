import 'package:flutter/material.dart';
import 'package:to_day_do_app/models/task.dart';
import 'package:to_day_do_app/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  const TasksList({super.key});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Go shopping'),
    Task(name: 'Buy a gift'),
    Task(name: 'Repair the car'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (BuildContext context, int index) {
        return TaskTile(
          isChecked: tasks[index].isDone,
          taskTitle: tasks[index].name,
        );
      },
    );
    // return ListView(
    //   children: [
    //     TaskTile(taskTitle: tasks[0].name, isChecked: tasks[0].isDone),
    //     TaskTile(taskTitle: tasks[1].name, isChecked: tasks[1].isDone),
    //     TaskTile(taskTitle: tasks[2].name, isChecked: tasks[2].isDone),
    //   ],
    // );
  }
}
