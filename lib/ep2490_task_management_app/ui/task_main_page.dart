import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import 'task_home_page.dart';

class TaskMainPage extends StatefulWidget {
  const TaskMainPage({super.key});

  @override
  State<TaskMainPage> createState() => _TaskMainPageState();
}

class _TaskMainPageState extends State<TaskMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: IndexedStack(
        index: 0,
        children: [TaskHomePage(), Placeholder(), Placeholder(), Placeholder()],
      ),
      bottomNavigationBar: Container(
        height: 110,
        decoration: BoxDecoration(
          borderRadius: .only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: .1),
              spreadRadius: 3,
              blurRadius: 32,
            ),
          ],
        ),
        padding: EdgeInsets.fromLTRB(24, 12, 24, 32),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: .center,
                spacing: 4,
                children: [
                  HugeIcon(icon: HugeIcons.strokeRoundedHome01),
                  Text("Home"),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: .center,
                spacing: 4,
                children: [
                  HugeIcon(icon: HugeIcons.strokeRoundedNotification01),
                  Text("Alert"),
                ],
              ),
            ),
            Expanded(
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Color.fromRGBO(104, 76, 236, 1),
                foregroundColor: Colors.white,
                child: Icon(Icons.add),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: .center,
                spacing: 4,
                children: [
                  HugeIcon(icon: HugeIcons.strokeRoundedCalendar01),
                  Text("Calendar"),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: .center,
                spacing: 4,
                children: [
                  HugeIcon(icon: HugeIcons.strokeRoundedUser),
                  Text("Profile"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
