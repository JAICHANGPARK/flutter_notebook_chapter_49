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
      body: SafeArea(child: Column(children: [Container(height: 80)])),
    );
  }
}
