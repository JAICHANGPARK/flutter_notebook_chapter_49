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
              height: 52,
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: Colors.white,
              ),
              child: Row(
                spacing: 8,
                children: [
                  Expanded(
                    child: Row(
                      spacing: 6,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.bar_chart), Text("Progress")],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: ShapeDecoration(
                        shape: StadiumBorder(),
                        color: Color.fromRGBO(245, 205, 27, 1),
                      ),
                      child: Row(
                        spacing: 6,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Icon(Icons.line_axis), Text("Activities")],
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
