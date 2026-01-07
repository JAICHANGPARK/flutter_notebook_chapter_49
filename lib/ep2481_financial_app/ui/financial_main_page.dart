import 'package:flutter/material.dart';

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
      body: Column(
        children: [
          Row(
            children: [
                  CircleAvatar(),
              Expanded(child: Placeholder()),
              CircleAvatar(),
              CircleAvatar(),
            ],
          ),
          Expanded(
            child: IndexedStack(
              index: 0,
              children: [

              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(height: 120,

          color: Colors.white,
          child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
        IconButton(onPressed: (){}, icon: Icon(Icons.home_filled)),
        IconButton(onPressed: (){}, icon: Icon(Icons.area_chart)),
        Container(
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
                offset: Offset(0, 16)
              )
            ],
          ),
          child: RotatedBox(
              quarterTurns: 1,
              child: Icon(Icons.import_export, color: Colors.white,
              size: 32,
              ),),
        ),
        IconButton(onPressed: (){}, icon: Icon(Icons.currency_bitcoin)),
        IconButton(onPressed: (){}, icon: Icon(Icons.apps)),

      ])),
    );
  }
}
