import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_49/ep2490_task_management_app/ui/task_detail_page.dart';
import 'package:google_fonts/google_fonts.dart';
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
                        style: GoogleFonts.poppins(
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
                            Text("1,265.00", style: GoogleFonts.poppins()),
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
                              style: GoogleFonts.poppins(fontSize: 20),
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
                        height: 220,
                        padding: EdgeInsets.only(left: 16),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return TaskDetailPage();
                                    },
                                  ),
                                );
                              },
                              child: Container(
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
                                  spacing: 12,
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
                                          progressColor: Color.fromRGBO(
                                            104,
                                            76,
                                            236,
                                            1,
                                          ),
                                          circularStrokeCap:
                                              CircularStrokeCap.round,
                                          startAngle: 270,
                                          backgroundColor: .fromRGBO(
                                            228,
                                            224,
                                            247,
                                            1,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "Practice English",
                                      style: GoogleFonts.poppins(
                                        fontSize: 20,
                                        fontWeight: .bold,
                                      ),
                                    ),
                                    Text(
                                      "Improve your English every day.",
                                      style: GoogleFonts.poppins(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Row(
                                      spacing: 9,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            height: 42,
                                            child: Stack(
                                              children: [
                                                ...List.generate(3, (index){
                                                  return Positioned(
                                                      left: index * 26,
                                                      child: CircleAvatar(
                                                        radius: 21,
                                                        backgroundColor: Colors.blue,
                                                      ));
                                                }),
                                              ],
                                            ),
                                          ),
                                        ),

                                        Container(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 12,
                                            vertical: 8,
                                          ),
                                          decoration: ShapeDecoration(
                                            shape: StadiumBorder(),
                                            color: Colors.grey[200]!,
                                          ),
                                          child: Row(
                                            spacing: 8,
                                            children: [
                                              Icon(Icons.chat_bubble_outline),
                                              Text("12"),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 12,
                                            vertical: 8,
                                          ),
                                          decoration: ShapeDecoration(
                                            shape: StadiumBorder(),
                                            color: Colors.grey[200]!,
                                          ),
                                          child: Row(
                                            spacing: 8,
                                            children: [
                                              Icon(Icons.link),
                                              Text("2"),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
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
                          padding: EdgeInsets.all(16),
                          child: Column(
                            spacing: 20,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                spacing: 12,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 8,
                                    ),
                                    decoration: ShapeDecoration(
                                      shape: StadiumBorder(),
                                      color: Colors.white,
                                    ),
                                    child: Text(
                                      "Warm-Up",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 8,
                                    ),
                                    decoration: ShapeDecoration(
                                      shape: StadiumBorder(),
                                      color: Color.fromRGBO(243, 241, 253, 1),
                                    ),
                                    child: Text(
                                      "Running",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  Spacer(),
                                  Text("5:30 AM"),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: .start,
                                spacing: 8,
                                children: [
                                  Text(
                                    "Daily Morning Goal",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: .bold,
                                    ),
                                  ),
                                  Text(
                                    "Run every day to build stamina, improve health, and stay focused",
                                  ),
                                ],
                              ),

                              Row(
                                children: [
                                  Row(
                                    spacing: 2,
                                    children: [
                                      CircleAvatar(
                                        radius: 24,
                                        backgroundColor: Colors.white,
                                      ),
                                      CircleAvatar(
                                        radius: 24,
                                        backgroundColor: Colors.white,
                                      ),
                                      CircleAvatar(
                                        radius: 24,
                                        backgroundColor: Colors.white,
                                      ),
                                      CircleAvatar(
                                        radius: 24,
                                        backgroundColor: Colors.white,
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Container(
                                    decoration: ShapeDecoration(
                                      shape: StadiumBorder(),
                                      color: Color.fromRGBO(104, 76, 236, 1),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 12,
                                    ),
                                    child: Row(
                                      spacing: 8,
                                      children: [
                                        Icon(
                                          Icons.chat_bubble_outline,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          "Copy Link",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
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
                          padding: EdgeInsets.all(16),
                          child: Column(
                            spacing: 20,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                spacing: 12,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 8,
                                    ),
                                    decoration: ShapeDecoration(
                                      shape: StadiumBorder(),
                                      color: Colors.white,
                                    ),
                                    child: Text(
                                      "Warm-Up",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 8,
                                    ),
                                    decoration: ShapeDecoration(
                                      shape: StadiumBorder(),
                                      color: Color.fromRGBO(243, 241, 253, 1),
                                    ),
                                    child: Text(
                                      "Running",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  Spacer(),
                                  Text("5:30 AM"),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: .start,
                                spacing: 8,
                                children: [
                                  Text(
                                    "Daily Morning Goal",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: .bold,
                                    ),
                                  ),
                                  Text(
                                    "Run every day to build stamina, improve health, and stay focused",
                                  ),
                                ],
                              ),

                              Row(
                                children: [
                                  Row(
                                    spacing: 0,
                                    children: [
                                      CircleAvatar(
                                        radius: 24,
                                        backgroundColor: Colors.white,
                                      ),
                                      CircleAvatar(
                                        radius: 24,
                                        backgroundColor: Colors.white,
                                      ),
                                      CircleAvatar(
                                        radius: 24,
                                        backgroundColor: Colors.white,
                                      ),
                                      CircleAvatar(
                                        radius: 24,
                                        backgroundColor: Colors.white,
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Container(
                                    decoration: ShapeDecoration(
                                      shape: StadiumBorder(),
                                      color: Color.fromRGBO(104, 76, 236, 1),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 12,
                                    ),
                                    child: Row(
                                      spacing: 8,
                                      children: [
                                        Icon(
                                          Icons.chat_bubble_outline,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          "Copy Link",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
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
