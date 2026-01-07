import 'package:flutter/material.dart';

import 'ui/financial_main_page.dart';


class FinancialApp extends StatelessWidget {
  const FinancialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FinancialMainPage(),
    );
  }
}
