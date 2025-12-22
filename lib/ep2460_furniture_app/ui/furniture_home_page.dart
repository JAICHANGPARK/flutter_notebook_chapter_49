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
        index:  pageIndex,
        children: [
          FurnitureTablePage(),
          Container(),
          Container(),
          Placeholder()
        ],
      ),
      
    );
  }
}
