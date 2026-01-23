import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class TaskCalendarPage extends StatefulWidget {
  const TaskCalendarPage({super.key});

  @override
  State<TaskCalendarPage> createState() => _TaskCalendarPageState();
}

class _TaskCalendarPageState extends State<TaskCalendarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100]!,
      body: Column(
        crossAxisAlignment: .start,
        children: [
          Container(
            height: 320,
            decoration: ShapeDecoration(
              shape: RoundedSuperellipseBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(32),
                  bottomRight: Radius.circular(32),
                ),
              ),
              color: Colors.white,
            ),
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                      ),
                      Container(
                        decoration: ShapeDecoration(
                          shape: StadiumBorder(),
                          color: Colors.grey[100]!,
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                        child: Row(
                          spacing: 4,
                          children: [
                            HugeIcon(icon: HugeIcons.strokeRoundedCalendar01),
                            Text("Dec 2025")
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
