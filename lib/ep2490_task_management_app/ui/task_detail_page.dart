import 'package:flutter/material.dart';
import 'package:percent_indicator/flutter_percent_indicator.dart';

class TaskDetailPage extends StatefulWidget {
  const TaskDetailPage({super.key});

  @override
  State<TaskDetailPage> createState() => _TaskDetailPageState();
}

class _TaskDetailPageState extends State<TaskDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300]!,
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            spacing: 16,
            children: [
              Row(
                spacing: 4,
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.white,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.arrow_back_outlined),
                    ),
                  ),
                  Spacer(),
                  Container(
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: .fromRGBO(104, 76, 236, 1),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    child: Text(
                      "Save",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.white,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.more_horiz),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    spacing: 16,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 220,
                        decoration: ShapeDecoration(
                          shape: RoundedSuperellipseBorder(
                            borderRadius: .circular(24),
                          ),
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(16),
                        child: Column(
                          spacing: 6,
                          crossAxisAlignment: .start,
                          children: [
                            Row(
                              spacing: 12,
                              children: [
                                CircleAvatar(
                                  radius: 26,
                                  backgroundColor: Colors.grey[300]!,
                                ),
                                Expanded(
                                  child: Column(
                                    spacing: 6,
                                    crossAxisAlignment: .start,
                                    children: [
                                      Text(
                                        "Task Title",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      Text(
                                        "Meet With Client",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                CircleAvatar(
                                  radius: 26,
                                  backgroundColor: Colors.grey[300]!,
                                  child: Icon(Icons.edit),
                                ),
                              ],
                            ),
                            Spacer(),
                            Text(
                              "Team Members",
                              style: TextStyle(fontSize: 20),
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width,
                              height: 52,
                              child: Stack(
                                // spacing: -12,
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    bottom: 0,
                                    child: CircleAvatar(radius: 24),
                                  ),
                                  Positioned(
                                    left: 30,
                                    top: 0,
                                    bottom: 0,
                                    child: CircleAvatar(radius: 24),
                                  ),
                                  Positioned(
                                    left: 60,
                                    top: 0,
                                    bottom: 0,
                                    child: CircleAvatar(radius: 24),
                                  ),
                                  Positioned(
                                    left: 90,
                                    top: 0,
                                    bottom: 0,
                                    child: CircleAvatar(radius: 24),
                                  ),
                                  Positioned(
                                    left: 120,
                                    top: 0,
                                    bottom: 0,
                                    child: CircleAvatar(radius: 24),
                                  ),
                                  Positioned(
                                    left: 150,
                                    top: 0,
                                    bottom: 0,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 14,
                                      ),
                                      decoration: ShapeDecoration(
                                        shape: StadiumBorder(),
                                        color: Color.fromRGBO(229, 228, 248, 1),
                                      ),
                                      child: Center(child: Text("+5 More")),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: .start,
                        spacing: 12,
                        children: [
                          Text("Description", style: TextStyle(fontSize: 20)),
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                            maxLines: 3,
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ),
                        ],
                      ),

                      Container(
                        padding: EdgeInsets.all(16),
                        // height: 320,
                        decoration: ShapeDecoration(
                          shape: RoundedSuperellipseBorder(
                            borderRadius: .circular(32),
                          ),
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: .start,
                          spacing: 16,

                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: .start,
                                    spacing: 6,
                                    children: [
                                      Text(
                                        "Task Progress",
                                        style: TextStyle(fontSize: 20),
                                      ),

                                      Text("Track and complete task"),
                                    ],
                                  ),
                                ),
                                CircularPercentIndicator(
                                  radius: 28,
                                  lineWidth: 6,
                                  percent: 0.36,
                                  center: Text("36%"),
                                ),
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: .circular(16),
                                color: Colors.grey[100]!,
                              ),
                              padding: EdgeInsets.all(8),
                              child: Row(
                                spacing: 12,
                                children: [
                                  CircleAvatar(
                                    radius: 18,
                                    foregroundColor: Colors.white,
                                    backgroundColor: .fromRGBO(104, 76, 236, 1),
                                    child: Icon(Icons.check),
                                  ),
                                  Expanded(
                                    child: Text(
                                      "Task 1",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.keyboard_arrow_down),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: .circular(16),
                                color: Colors.grey[100]!,
                              ),
                              padding: EdgeInsets.all(8),
                              child: Row(
                                spacing: 12,
                                children: [
                                  CircleAvatar(
                                    radius: 18,
                                    foregroundColor: Colors.white,
                                    backgroundColor: .fromRGBO(104, 76, 236, 1),
                                    child: Icon(Icons.check),
                                  ),
                                  Expanded(
                                    child: Text(
                                      "Task 2",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.keyboard_arrow_down),
                                  ),
                                ],
                              ),
                            ),
                            Container(

                              decoration: BoxDecoration(
                                borderRadius: .circular(16),
                                color: Colors.grey[100]!,
                              ),
                              padding: EdgeInsets.all(8),
                              child: Row(
                                spacing: 12,
                                children: [
                                  Container(
                                    height: 36,
                                    width: 36,
                                    decoration: BoxDecoration(
                                      shape: .circle,
                                      border: .all()
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      "Task 3",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.keyboard_arrow_down),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text("title"),
                      Container(height: 320, child: Placeholder()),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
