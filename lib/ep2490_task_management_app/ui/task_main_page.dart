import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';


class TaskMainPage extends StatefulWidget {
  const TaskMainPage({super.key});

  @override
  State<TaskMainPage> createState() => _TaskMainPageState();
}

class _TaskMainPageState extends State<TaskMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: [
          Placeholder(),
          Placeholder(),
          Placeholder(),
          Placeholder()
        ],
      ),
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          borderRadius: .only(
            topLeft: Radius.circular(24),
            topRight:  Radius.circular(24),
          )
        ),
        child: Row(
          children: [
            Column(
              children: [
                HugeIcon(icon: HugeIcons.strokeRoundedHome01),
                Text("Home")
              ],
            )
          ],
        ),
      ),
    );
  }
}
