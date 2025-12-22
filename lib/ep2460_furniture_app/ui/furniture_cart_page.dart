import 'package:flutter/material.dart';

class FurnitureCartPage extends StatefulWidget {
  const FurnitureCartPage({super.key});

  @override
  State<FurnitureCartPage> createState() => _FurnitureCartPageState();
}

class _FurnitureCartPageState extends State<FurnitureCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100]!,
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        centerTitle: true,
        title: Text("My cart"),
      ),
      body: Column(
        children: [
          Text("Total (09) items"),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Placeholder();
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: .only(
                topLeft: .circular(12),
                topRight: .circular(12),
              ),

            ),
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
