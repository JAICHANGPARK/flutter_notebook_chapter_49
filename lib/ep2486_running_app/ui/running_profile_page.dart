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
                CircleAvatar(),
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
                  
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[100]!,
                        blurRadius: 3,
                        spreadRadius: 3,
                      ),
                    ],
                  ),
                  child: Icon(Icons.settings_outlined),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
