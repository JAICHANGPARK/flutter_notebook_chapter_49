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
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  padding: EdgeInsets.all(16),
                  decoration: ShapeDecoration(
                    shadows: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: .05),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: Offset(0, 8),
                      ),
                    ],
                    color: .fromRGBO(242, 247, 250, 1),
                    shape: RoundedSuperellipseBorder(
                      borderRadius: .circular(24),
                      side: BorderSide(color: Colors.white),
                    ),
                  ),

                  child: Column(
                    crossAxisAlignment: .start,
                    spacing: 20,
                    children: [
                      Row(
                        spacing: 6,
                        children: [
                          Text("Multi-use virtual"),
                          Icon(Icons.info_outline),
                        ],
                      ),
                      Row(
                        spacing: 12,
                        children: [
                          Container(
                            height: 48,
                            width: 72,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(9),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              spacing: 5,
                              crossAxisAlignment: .start,
                              children: [
                                Text("Shop", style: TextStyle(fontSize: 20)),
                                Text("Card"),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        spacing: 12,
                        children: [
                          Container(
                            height: 48,
                            width: 72,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(9),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              spacing: 5,
                              crossAxisAlignment: .start,
                              children: [
                                Text("General", style: TextStyle(fontSize: 20)),
                                Text("Ready yo use"),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Physical",
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                      Row(
                        spacing: 12,
                        children: [
                          Container(
                            height: 48,
                            width: 72,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(9),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              spacing: 5,
                              crossAxisAlignment: .start,
                              children: [
                                Text(
                                  "Metal Space Gray",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "Activate card",
                                  style: TextStyle(color: Colors.red),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 140,
                  margin: EdgeInsets.symmetric(horizontal: 16, ),
                  padding: EdgeInsets.all(16),
                  decoration: ShapeDecoration(
                    shadows: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: .05),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: Offset(0, 8),
                      ),
                    ],
                    color: .fromRGBO(242, 247, 250, 1),
                    shape: RoundedSuperellipseBorder(
                      borderRadius: .circular(24),
                      side: BorderSide(color: Colors.white),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: .spaceBetween,
                        children: [
                          Text("Rate Duwet Cards",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey
                          ),),
                          Icon(Icons.clear),
                        ],
                      ),
                      Row(
                        children: [
                          Text("😡",style: TextStyle(
                            fontSize: 32,
                          ),),
                          Text("☹",style: TextStyle(
                            fontSize: 32,
                          ),),
                          Text("😑",style: TextStyle(
                            fontSize: 32,
                          ),),
                          Text("😊"),
                          Text("😍")
                        ],
                      )
                    ],
                  ),
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
