import 'package:flutter/material.dart';


class FinancialMainPage extends StatefulWidget {
  const FinancialMainPage({super.key});

  @override
  State<FinancialMainPage> createState() => _FinancialMainPageState();
}

class _FinancialMainPageState extends State<FinancialMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(),
      bottomNavigationBar: Container(
        height: 120,
        child: Row(
          children: [

          ],
        ),
      ),
    );
  }
}
