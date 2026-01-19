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
        height: 100,
        decoration: BoxDecoration(
          borderRadius: .only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
          color: Colors.white,
        ),
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: .center,
              spacing: 4,
              children: [
                HugeIcon(icon: HugeIcons.strokeRoundedHome01),
                Text("Home"),
              ],
            ),
            Column(
              mainAxisAlignment: .center,
              spacing: 4,
              children: [
                HugeIcon(icon: HugeIcons.strokeRoundedHome01),
                Text("Home"),
              ],
            ),
            CircleAvatar(radius: 30),
            Column(
              mainAxisAlignment: .center,
              spacing: 4,
              children: [
                HugeIcon(icon: HugeIcons.strokeRoundedHome01),
                Text("Home"),
              ],
            ),
            Column(
              mainAxisAlignment: .center,
              spacing: 4,
              children: [
                HugeIcon(icon: HugeIcons.strokeRoundedHome01),
                Text("Home"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
