import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_day_do_app/models/task_data.dart';
import 'package:to_day_do_app/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: Provider.of<TaskData>(context).tasks.length,
          itemBuilder: (BuildContext context, int index) {
            return TaskTile(
              isChecked: taskData
                  .tasks[index]
                  .isDone, //=Provider.of<TaskData>(context).tasks[index].isDone,
              taskTitle: taskData
                  .tasks[index]
                  .name, //=Provider.of<TaskData>(context).tasks[index].name
              checkboxChange: (newValue) {
                // setState(() {
                //   widget.tasks[index].doneChange();
                // });
              },
            );
          },
        );
      },
    );
  }
}
