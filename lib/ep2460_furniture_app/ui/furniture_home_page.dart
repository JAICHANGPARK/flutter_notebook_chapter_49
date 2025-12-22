import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_49/ep2460_furniture_app/ui/furniture_table_page.dart';

import 'furniture_cart_page.dart';

class FurnitureHomePage extends StatefulWidget {
  const FurnitureHomePage({super.key});

  @override
  State<FurnitureHomePage> createState() => _FurnitureHomePageState();
}

class _FurnitureHomePageState extends State<FurnitureHomePage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageIndex,
        children: [
          FurnitureTablePage(),
          FurnitureCartPage(),
          Container(),
          Placeholder(),
        ],
      ),
      bottomNavigationBar: Container(
        height: 88,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey[100]!,
              blurRadius: 10,
              spreadRadius: 10,
            ),
          ],
        ),

        child: Row(
          mainAxisAlignment: .spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              icon: Icon(Icons.home_outlined),
              color: Colors.grey[400]!,
            ),
            Container(
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: Colors.black,
              ),
              padding: .symmetric(horizontal: 24, vertical: 12),
              child: Text("Cart", style: TextStyle(color: Colors.white)),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              icon: Icon(Icons.shopping_cart_outlined),
              color: Colors.grey[400]!,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              icon: Icon(Icons.wallet),
              color: Colors.grey[400]!,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  pageIndex = 3;
                });
              },
              icon: Icon(Icons.person_2_outlined),
              color: Colors.grey[400]!,
            ),
          ],
        ),
      ),
    );
  }
}
