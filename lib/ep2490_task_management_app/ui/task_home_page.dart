import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

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
                spacing: 20,
                children: [
                  Column(
                    spacing: 8,
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
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.grey,
                              ),
                              child: Text("See all"),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 200,
                        padding: EdgeInsets.only(left: 16),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              width: MediaQuery.sizeOf(context).width * .8,
                              margin: EdgeInsets.only(right: 12),
                              decoration: ShapeDecoration(
                                shape: RoundedSuperellipseBorder(
                                  borderRadius: .circular(32),
                                ),
                                color: Colors.white,
                              ),
                              padding: EdgeInsets.all(16),
                              child: Column(
                                spacing: 8,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: .spaceBetween,
                                    children: [
                                      CircleAvatar(radius: 24),
                                      CircularPercentIndicator(
                                        radius: 28,
                                        lineWidth: 6,
                                        percent: .76,
                                        center: Text("76%"),
                                        progressColor: Color.fromRGBO(104, 76, 236, 1),
                                        circularStrokeCap: CircularStrokeCap.round,
                                        startAngle: 270,
                                        backgroundColor: .fromRGBO(228, 224, 247, 1),

                                      ),
                                    ],
                                  ),
                                  Text(
                                    "Practice English",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: .bold,
                                    ),
                                  ),
                                  Text("Improve your English every day."),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      spacing: 6,
                      children: [
                        Text("My Current Task", style: TextStyle(fontSize: 20)),
                        Container(
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(),
                            color: Colors.red,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 2,
                          ),
                          child: Text(
                            "04",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: .start,
                      spacing: 16,
                      children: [
                        Container(
                          height: 240,
                          decoration: ShapeDecoration(
                            shape: RoundedSuperellipseBorder(
                              borderRadius: .circular(32),
                            ),
                            color: .fromRGBO(229, 226, 248, 1),
                          ),
                          child: Column(
                            children: [Expanded(child: Placeholder())],
                          ),
                        ),
                        Container(
                          height: 240,
                          decoration: ShapeDecoration(
                            shape: RoundedSuperellipseBorder(
                              borderRadius: .circular(32),
                            ),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [Expanded(child: Placeholder())],
                          ),
                        ),
                      ],
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
