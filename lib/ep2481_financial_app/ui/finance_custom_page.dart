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
          children: [
            Container(
              height: 420,
              child: Placeholder(),
            ),
            Row(
              children: [
                Text("Customize your Home screen"),
                IconButton(onPressed: (){}, icon: Icon(Icons.clear))
              ],
            )
          ],
        ),
      )

    );
  }
}
