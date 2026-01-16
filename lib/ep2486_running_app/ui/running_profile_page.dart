import 'package:flutter/material.dart';

class RunningProfilePage extends StatefulWidget {
  const RunningProfilePage({super.key});

  @override
  State<RunningProfilePage> createState() => _RunningProfilePageState();
}

class _RunningProfilePageState extends State<RunningProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Column(
          spacing: 16,
          children: [
            Row(
              children: [
                CircleAvatar(radius: 24),
                Expanded(
                  child: Center(
                    child: Text(
                      "Profile",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[200]!,
                        blurRadius: 3,
                        spreadRadius: 3,
                      ),
                    ],
                  ),
                  child: Icon(Icons.settings_outlined),
                ),
              ],
            ),
            Container(
              height: 48,
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: Colors.white,
              ),
              padding: EdgeInsets.all(2),
              child: Row(
                spacing: 8,
                children: [
                  Expanded(
                    child: Row(
                      spacing: 6,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.bar_chart, color: Colors.grey),
                        Text(
                          "Progress",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: double.infinity,
                      decoration: ShapeDecoration(
                        shape: StadiumBorder(),
                        color: Color.fromRGBO(245, 205, 27, 1),
                      ),
                      child: Row(
                        spacing: 6,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.line_axis),
                          Text("Activities", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    height: 380,
                    margin: EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[200]!,
                          blurRadius: 3,
                          spreadRadius: 3,
                        ),
                      ],
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: .start,
                            children: [
                              Row(
                                spacing: 8,
                                children: [
                                  Text("Morning Run"),
                                  Spacer(),
                                  Icon(Icons.location_on_outlined),
                                  Text("Bali"),
                                ],
                              ),
                              Text(
                                "November 26, 2025 at 5:20 AM",
                                style: TextStyle(),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 72,
                          margin: EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(color: Colors.grey[200]!),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: .center,
                                  children: [
                                    Text("Distance"),
                                    Text(
                                      "8.9 km",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              VerticalDivider(),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: .center,
                                  children: [
                                    Text("Time"),
                                    Text(
                                      "1h 3m",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              VerticalDivider(),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: .center,
                                  children: [
                                    Text("Avg Pace"),
                                    Text("5:30 /km"),
                                  ],
                                ),
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
    );
  }
}
