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
      backgroundColor: Color.fromRGBO(236, 243, 245, 1),
      body: Stack(),
      bottomNavigationBar: Container(height: 120, child: Row(children: [
        IconButton(onPressed: (){}, icon: Icon(Icons.home_filled)),
        IconButton(onPressed: (){}, icon: Icon(Icons.area_chart)),
        Container(
          height: 46,
          width: 46,
          decoration: BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),
        ),
        IconButton(onPressed: (){}, icon: Icon(Icons.currency_bitcoin)),
        IconButton(onPressed: (){}, icon: Icon(Icons.apps)),

      ])),
    );
  }
}
