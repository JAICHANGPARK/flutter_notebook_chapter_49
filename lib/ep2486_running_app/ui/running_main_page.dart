import 'package:flutter/material.dart';

class RunningMainPage extends StatefulWidget {
  const RunningMainPage({super.key});

  @override
  State<RunningMainPage> createState() => _RunningMainPageState();
}

class _RunningMainPageState extends State<RunningMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Maps"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Record"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Groups"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Profile"),
        ],
      ),
    );
  }
}
