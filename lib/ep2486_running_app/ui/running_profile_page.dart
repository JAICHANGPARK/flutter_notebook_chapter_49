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
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Column(
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
              height: 62,
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
