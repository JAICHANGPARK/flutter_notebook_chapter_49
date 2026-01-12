import 'package:flutter/material.dart';

class FinanceCustomPage extends StatefulWidget {
  const FinanceCustomPage({super.key});

  @override
  State<FinanceCustomPage> createState() => _FinanceCustomPageState();
}

class _FinanceCustomPageState extends State<FinanceCustomPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 420,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(32),
                                topRight: Radius.circular(32),
                              ),
                              border: Border.all(color: Colors.white),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withValues(alpha: .05),
                                  blurRadius: 4,
                                  spreadRadius: 4,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                          width: double.infinity,
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(color: Colors.white),
                          child: Text(
                            "🧩 No transactions yet",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Customize your Home screen"),
                IconButton(onPressed: () {}, icon: Icon(Icons.clear)),
              ],
            ),
            Text("Long press and drag widgets to reorder"),
            TextButton(
              onPressed: () {},
              child: Text("Learn more"),
              style: TextButton.styleFrom(padding: .zero),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Widgets"),
                IconButton(onPressed: () {}, icon: Icon(Icons.add)),
              ],
            ),
            Row(children: [Text("Card"), Icon(Icons.keyboard_arrow_right)]),
          ],
        ),
      ),
    );
  }
}
