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
            // height: 320,
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
                  Padding(
                    padding: const EdgeInsets.all(16.0),

                    child: Column(
                      spacing: 16,
                      children: [
                        Row(
                          mainAxisAlignment: .spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.grey[100]!,
                            ),
                            Container(
                              decoration: ShapeDecoration(
                                shape: StadiumBorder(),
                                color: Colors.grey[100]!,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 24,
                                vertical: 16,
                              ),
                              child: Row(
                                spacing: 4,
                                children: [
                                  HugeIcon(
                                    icon: HugeIcons.strokeRoundedCalendar01,
                                  ),
                                  Text("Dec 2025"),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 4,
                          ),
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(),
                            color: Colors.grey[100]!,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              icon: HugeIcon(
                                icon: HugeIcons.strokeRoundedSearch01,
                              ),
                              border: .none,
                              hintText: "Search your daily t...",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 88,
                    child: ListView.builder(
                      scrollDirection: .horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 52,
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(
                              side: BorderSide(color: Colors.grey[200]!),
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 3,
                            vertical: 3,
                          ),

                          margin: EdgeInsets.only(left: 16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Sun"),
                              CircleAvatar(
                                radius: 24,
                                backgroundColor: Colors.grey[100]!,
                                foregroundColor: Colors.black,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("12"),
                                    CircleAvatar(
                                      radius: 2,
                                      backgroundColor: Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Row(
              spacing: 12,
              children: [
                Text("My Today Task", style: TextStyle(fontSize: 20)),
                Container(
                  decoration: ShapeDecoration(
                    shape: StadiumBorder(),
                    color: Colors.red,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  child: Text("02", style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: .zero,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Row(
                    spacing: 16,
                    children: [
                      Text("05:30", style: TextStyle(fontSize: 16)),

                      Expanded(child: Divider()),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 72),
                  padding: EdgeInsets.all(16),
                  decoration: ShapeDecoration(
                    shape: RoundedSuperellipseBorder(
                      borderRadius: .circular(32),
                    ),
                    color: .fromRGBO(229, 226, 248, 1),
                  ),
                  child: Column(
                    spacing: 16,
                    children: [
                      Row(
                        mainAxisAlignment: .spaceBetween,
                        children: [
                          Text(
                            "Daily Morning Goal",
                            style: TextStyle(fontSize: 20, fontWeight: .bold),
                          ),
                          Text("5:30 AM"),
                        ],
                      ),
                      Text(
                        "Run every day to build stamina, improve health, and stay focused",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
