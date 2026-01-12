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
                children: [Positioned.fill(child: Column(children: [
                  Expanded(child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                  ))

                ]))],
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
