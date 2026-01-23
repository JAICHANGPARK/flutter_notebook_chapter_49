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
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 32,
                  child: IconButton(onPressed: (){
                    Navigator.of(context).pop();
                  }, icon: Icon(Icons.arrow_back_outlined)),
                ),

              ],
            ),
            Expanded(child: SingleChildScrollView(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 200,
                  child: Placeholder(),
                ),
                Text("title"),
                Text("title"),
                Container(
                  height: 320,
                  child: Placeholder(),
                ),
                Text("title"),
                Container(
                  height: 320,
                  child: Placeholder(),
                )


              ],
            ),))
          ],
        ),
      ),
    );

  }
}
