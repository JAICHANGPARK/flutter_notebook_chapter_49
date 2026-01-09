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
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            height: 62,
            child: Row(
              children: [
                Container(
                  padding: ,
                  height: double.infinity,
                  color: Color.fromRGBO(229, 235, 240, 1),
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
