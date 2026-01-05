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
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey[200]!,
                    )
                  ],
                ),
              ),
              Container(height: 120, child: Placeholder()),
              Expanded(child: Placeholder()),
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
