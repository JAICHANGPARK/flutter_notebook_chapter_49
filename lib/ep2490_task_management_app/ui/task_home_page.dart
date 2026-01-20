import 'package:flutter/material.dart';

class TaskHomePage extends StatefulWidget {
  const TaskHomePage({super.key});

  @override
  State<TaskHomePage> createState() => _TaskHomePageState();
}

class _TaskHomePageState extends State<TaskHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(radius: 28),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Dream Walker"),
                    Container(
                      decoration: ShapeDecoration(
                        shape: StadiumBorder(),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              CircleAvatar(backgroundColor: Colors.white, radius: 28),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                spacing: 16,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: .spaceBetween,
                        children: [
                          Text("Task IN Progress"),
                          TextButton(onPressed: () {}, child: Text("See all")),
                        ],
                      ),
                      Container(
                        height: 200,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Placeholder();
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("My Current Task"),
                      Container(
                        decoration: ShapeDecoration(
                          shape: StadiumBorder(),
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),

                  Container(height: 240, child: Placeholder()),
                  Container(height: 240, child: Placeholder()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
