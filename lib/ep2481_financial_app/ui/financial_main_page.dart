import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_49/ep2481_financial_app/ui/finance_custom_page.dart';

import 'finance_home_page.dart';

class FinancialMainPage extends StatefulWidget {
  const FinancialMainPage({super.key});

  @override
  State<FinancialMainPage> createState() => _FinancialMainPageState();
}

class _FinancialMainPageState extends State<FinancialMainPage> {
  int pageNum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(236, 243, 245, 1),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                spacing: 12,
                children: [
                  Container(
                    height: 54,
                    width: 54,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[100]!,
                          spreadRadius: 4,
                          blurRadius: 10,
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: Text("")),
                  Container(
                    height: 54,
                    width: 54,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[100]!,
                          spreadRadius: 4,
                          blurRadius: 10,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 54,
                    width: 54,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[100]!,
                          spreadRadius: 4,
                          blurRadius: 10,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: IndexedStack(
                index: pageNum,
                children: [
                  FinanceHomePage(),
                  FinanceCustomPage(),
                  Placeholder(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 120,

        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  pageNum = 0;
                });
              },
              icon: Icon(Icons.home_filled),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  pageNum = 1;
                });
              },
              icon: Icon(Icons.area_chart),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  pageNum = 2;
                });
              },
              child: Container(
                height: 62,
                width: 62,
                decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: .15),
                      blurRadius: 10,
                      spreadRadius: 0,
                      offset: Offset(0, 16),
                    ),
                  ],
                ),
                child: RotatedBox(
                  quarterTurns: 1,
                  child: Icon(
                    Icons.import_export,
                    color: Colors.white,
                    size: 32,
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  pageNum = 3;
                });
              },
              icon: Icon(Icons.currency_bitcoin),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  pageNum = 4;
                });
              },
              icon: Icon(Icons.apps),
            ),
          ],
        ),
      ),
    );
  }
}
