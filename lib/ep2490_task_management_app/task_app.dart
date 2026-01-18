import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_49/ep2490_task_management_app/ui/task_main_page.dart';


class TaskManagementApp extends StatelessWidget {
  const TaskManagementApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TaskMainPage(),
    );
  }
}
