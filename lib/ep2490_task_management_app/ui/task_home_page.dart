import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class TaskHomePage extends StatefulWidget {
  const TaskHomePage({super.key});

  @override
  State<TaskHomePage> createState() => _TaskHomePageState();
}

class _TaskHomePageState extends State<TaskHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              spacing: 16,
              children: [
                CircleAvatar(radius: 32),
                Expanded(
                  child: Column(
                    spacing: 6,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dream Walker",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        decoration: ShapeDecoration(
                          shape: StadiumBorder(),
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 3,
                        ),
                        child: Row(
                          spacing: 4,
                          mainAxisSize: .min,
                          children: [
                            Icon(
                              Icons.local_fire_department_outlined,
                              size: 18,
                            ),
                            Text("1,265.00"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  foregroundColor: Colors.black,
                  child: HugeIcon(icon: HugeIcons.strokeRoundedNotification01),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                spacing: 16,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: .spaceBetween,
                          children: [
                            Text(
                              "Task In Progress",
                              style: TextStyle(fontSize: 20),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text("See all"),
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 200,

                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              width: MediaQuery.sizeOf(context).width * .9,
                              padding: EdgeInsets.only(left: 16),
                              decoration: ShapeDecoration(
                                shape: RoundedSuperellipseBorder(
                                  borderRadius: .circular(32),
                                ),
                                color: Colors.white,
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("My Current Task"),
                      Container(
                        decoration: ShapeDecoration(
                          shape: StadiumBorder(),
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),

                  Container(height: 240, child: Placeholder()),
                  Container(height: 240, child: Placeholder()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
