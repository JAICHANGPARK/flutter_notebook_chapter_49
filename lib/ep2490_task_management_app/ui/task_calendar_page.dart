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
                    height: 80,
                    child: ListView.builder(
                      scrollDirection: .horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 52,
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(
                              side: BorderSide(color: Colors.black),
                            ),
                          ),
                          margin: EdgeInsets.only(left: 16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Sun"),
                              CircleAvatar(
                                radius: 24,
                                backgroundColor: Colors.grey[100]!,
                                child: Column(
                                  children: [
                                    Text("12"),
                                    CircleAvatar(radius: 2,backgroundColor: Colors.black,)
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
        ],
      ),
    );
  }
}
