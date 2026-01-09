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
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            height: 62,
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
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(height: 260, child: Placeholder()),
      ],
    );
  }
}
