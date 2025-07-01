import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider/task_controller.dart';
import 'Task_list.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => TaskListController(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: TaskListView()),
    );
  }
}
