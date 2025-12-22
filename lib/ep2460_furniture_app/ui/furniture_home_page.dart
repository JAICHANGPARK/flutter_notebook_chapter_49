import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_49/ep2460_furniture_app/ui/furniture_table_page.dart';

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
          Container(),
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
              spreadRadius: 10
            )
          ]
        ),

        child: Row(

          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.home_outlined)),
            Container(
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: Colors.black,
              ),
              padding: .symmetric(horizontal: 24, vertical: 12),
              child: Text("Cart", style: TextStyle(color: Colors.white)),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart_outlined),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.wallet)),
            IconButton(onPressed: () {}, icon: Icon(Icons.person_2_outlined)),
          ],
        ),
      ),
    );
  }
}
