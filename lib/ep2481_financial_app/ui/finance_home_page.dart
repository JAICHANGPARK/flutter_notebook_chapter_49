import 'package:flutter/material.dart';

class FinanceHomePage extends StatefulWidget {
  const FinanceHomePage({super.key});

  @override
  State<FinanceHomePage> createState() => _FinanceHomePageState();
}

class _FinanceHomePageState extends State<FinanceHomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 16,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            height: 58,
            margin: EdgeInsets.only(left: 12),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  height: double.infinity,

                  decoration: BoxDecoration(
                    color: Color.fromRGBO(229, 235, 240, 1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      bottomLeft: Radius.circular(32),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Accounts",
                      style: TextStyle(color: Colors.black38, fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  height: double.infinity,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Center(
                    child: Text(
                      "Cards",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(229, 235, 240, 1),
                  ),
                  child: Center(
                    child: Text(
                      "Linked",
                      style: TextStyle(color: Colors.black38, fontSize: 16),
                    ),
                  ),
                ),
                VerticalDivider(color: Colors.white, width: 1),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(229, 235, 240, 1),
                  ),
                  child: Center(
                    child: Text(
                      "Stocks",
                      style: TextStyle(color: Colors.black38, fontSize: 16),
                    ),
                  ),
                ),
                VerticalDivider(color: Colors.white, width: 1),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(229, 235, 240, 1),
                  ),
                  child: Center(
                    child: Text(
                      "Stocks",
                      style: TextStyle(color: Colors.black38, fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              spacing: 16,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  height: 300,
                  decoration: ShapeDecoration(

                    shape: RoundedSuperellipseBorder(
                      borderRadius: .circular(24),
                      side: BorderSide(color: Colors.white,)
                    ),
                  ),
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Multi-use virtual"),
                          Icon(Icons.info_outline),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  height: 140,
                  child: Placeholder(),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  height: 140,
                  child: Placeholder(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
