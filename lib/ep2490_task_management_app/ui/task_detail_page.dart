import 'package:flutter/material.dart';


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
      body: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 32,
                child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_outlined)),
              ),

            ],
          )
        ],
      ),
    );

  }
}
