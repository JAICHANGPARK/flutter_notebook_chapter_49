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
        Container(
          height: 52,
          child: Placeholder(),
        ),
        Container(
          height: 260,
          child: Placeholder(),
        )
      ],
    );
  }
}
