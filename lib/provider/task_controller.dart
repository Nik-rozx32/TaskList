import 'package:flutter/material.dart';
import 'package:tasklist/model/task.dart';

class TaskListController extends ChangeNotifier {
  final List<Task> _task = [
    Task(title: 'Task 1'),
    Task(title: 'Task 2'),
    Task(title: 'Task 3'),
  ];
  List<Task> get task => _task;

  void toggleTaskCompletion(int index) {
    _task[index].isCompleted = !_task[index].isCompleted;
    notifyListeners();
  }
}
