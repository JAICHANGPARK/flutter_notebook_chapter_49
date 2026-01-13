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
      backgroundColor: Color.fromRGBO(239, 239, 239, 1),
      bottomNavigationBar: SizedBox(
        height: 100,

        child: BottomNavigationBar(
          backgroundColor: Colors.white,

          type: BottomNavigationBarType.fixed,
          items: [BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.map), label: "Maps"),
            BottomNavigationBarItem(icon: Icon(Icons.play_arrow_outlined), label: "Record"),
            BottomNavigationBarItem(icon: Icon(Icons.group_add_outlined), label: "Groups"),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "Profile"),
          ],
        ),
      ),
    );
  }
}
