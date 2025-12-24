import 'package:flutter/material.dart';

class BusinessMainPage extends StatefulWidget {
  const BusinessMainPage({super.key});

  @override
  State<BusinessMainPage> createState() => _BusinessMainPageState();
}

class _BusinessMainPageState extends State<BusinessMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Business"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
      ),
      body: Column(children: []),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey[400]!,
              blurRadius: 10,
              spreadRadius: 30
            )
          ],
        ),

        child: Row(
          children: [

          ],
        ),
      ),
    );
  }
}
