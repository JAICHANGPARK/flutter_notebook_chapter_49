import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
        padding: const EdgeInsets.fromLTRB(16.0, 16, 16, 32),
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
              Gap(24),
              Expanded(
                child: ListView(
                  children: [
                    Align(
                      alignment: .centerRight,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 28,
                          vertical: 20,
                        ),
                        margin: EdgeInsets.only(bottom: 12),
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            bottomLeft: Radius.circular(24),
                            bottomRight: Radius.circular(24),
                          ),
                        ),
                        child: Text(
                          "Hi, Jhon",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Align(
                      alignment: .centerRight,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 28,
                          vertical: 20,
                        ),
                        margin: EdgeInsets.only(bottom: 12),
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            bottomLeft: Radius.circular(24),
                            bottomRight: Radius.circular(24),
                          ),
                        ),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                          maxLines: 2,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Align(
                      alignment: .centerRight,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 24),
                        child: Text(
                          "12:15 pm",
                          maxLines: 2,
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    Align(
                      alignment: .centerLeft,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 28,
                          vertical: 20,
                        ),
                        margin: EdgeInsets.only(bottom: 12, right: 24),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24),

                            bottomRight: Radius.circular(24),
                          ),
                        ),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                          maxLines: 2,
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    Align(
                      alignment: .centerLeft,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 24),
                        child: Text(
                          "12:15 pm",
                          maxLines: 2,
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    Align(
                      alignment: .centerRight,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 28,
                          vertical: 20,
                        ),
                        margin: EdgeInsets.only(bottom: 12, left: 32),
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            bottomLeft: Radius.circular(24),
                            bottomRight: Radius.circular(24),
                          ),
                        ),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                          maxLines: 2,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Align(
                      alignment: .centerRight,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 12),
                        child: Text(
                          "12:15 pm",
                          maxLines: 2,
                          style: TextStyle(color: Colors.black),
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
