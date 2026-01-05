import 'package:flutter/material.dart';

class RealEstateChatPage extends StatefulWidget {
  const RealEstateChatPage({super.key});

  @override
  State<RealEstateChatPage> createState() => _RealEstateChatPageState();
}

class _RealEstateChatPageState extends State<RealEstateChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100]!,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          bottom: false,
          child: Column(
            spacing: 16,
            children: [
              Container(
                height: 80,
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Colors.white,
                ),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: Row(
                  spacing: 16,
                  children: [
                    CircleAvatar(
                      radius: 26,
                      backgroundColor: Colors.grey[100]!,
                      foregroundColor: Colors.black,
                      child: Icon(Icons.arrow_back_ios_outlined),
                    ),
                    Expanded(
                      child: Text(
                        "Dream Walker",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      radius: 26,
                      backgroundColor: Colors.grey[100]!,
                      foregroundColor: Colors.black,
                      child: Icon(Icons.phone_outlined),
                    ),
                    CircleAvatar(
                      radius: 26,
                      backgroundColor: Colors.grey[100]!,
                      foregroundColor: Colors.black,
                      child: Icon(Icons.videocam_outlined),
                    ),
                  ],
                ),
              ),
              Container(
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        spacing: 12,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            spacing: 12,
                            children: [
                              CircleAvatar(radius: 22),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Unique 3 Bedroom Flat",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text("Posted by Dream"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            spacing: 2,
                            children: [
                              Icon(Icons.star, color: Colors.orange, size: 18),
                              Icon(Icons.star, color: Colors.orange, size: 18),
                              Icon(Icons.star, color: Colors.orange, size: 18),
                              Icon(Icons.star, color: Colors.orange, size: 18),
                              Icon(
                                Icons.star_outline,
                                color: Colors.grey,
                                size: 18,
                              ),
                              Text(
                                "40 Rating (32 reviews)",
                                style: TextStyle(fontWeight: .bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 120,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    Align(
                      alignment: .centerRight,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                        decoration: BoxDecoration(color: Colors.teal,),
                        child: Text(
                          "Hi, Jhon",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 62,
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Colors.white,
                ),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add_circle_outline),
                    ),
                    VerticalDivider(),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Write a reply...",
                          border: .none,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      child: Icon(Icons.send),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
