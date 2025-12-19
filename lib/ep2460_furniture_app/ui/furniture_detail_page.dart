import 'package:flutter/material.dart';

class FurnitureDetailPage extends StatefulWidget {
  const FurnitureDetailPage({super.key});

  @override
  State<FurnitureDetailPage> createState() => _FurnitureDetailPageState();
}

class _FurnitureDetailPageState extends State<FurnitureDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Details"),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        backgroundColor: Colors.grey[100],
      ),
      body: Column(
        children: [
          Container(
            height: 420,
            decoration: BoxDecoration(color: Colors.grey[100]),
          ),
        ],
      ),
    );
  }
}
