import 'package:flutter/material.dart';
import 'provider/task_controller.dart';
import 'package:provider/provider.dart';

class TaskListView extends StatelessWidget {
  const TaskListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<TaskListController>();

    return ListView.builder(
      itemCount: controller.task.length,
      itemBuilder: (context, index) {
        final tasks = controller.task[index];
        return ListTile(
            title: Text(tasks.title),
            leading: Checkbox(
              value: tasks.isCompleted,
              onChanged: (_) {
                controller.toggleTaskCompletion(index);
              },
            ));
      },
    );
  }
}
