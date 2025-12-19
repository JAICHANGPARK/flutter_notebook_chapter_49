import 'package:flutter/material.dart';

class FurnitureTablePage extends StatefulWidget {
  const FurnitureTablePage({super.key});

  @override
  State<FurnitureTablePage> createState() => _FurnitureTablePageState();
}

class _FurnitureTablePageState extends State<FurnitureTablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Table"),
        centerTitle: true,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: Expanded(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index){
            return Container(
              color: Colors.blue,
            );
          },
        ),
      ),
    );
  }
}
