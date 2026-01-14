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
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(),
              Expanded(child: Center(child: Text("Profile"))),
              CircleAvatar(),
            ],
          ),
        ],
      ),
    );
  }
}
