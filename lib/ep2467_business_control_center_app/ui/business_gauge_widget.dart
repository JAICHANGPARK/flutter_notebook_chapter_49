import 'package:flutter/material.dart';

class BusinessGaugeWidget extends StatelessWidget {
  const BusinessGaugeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            spacing: 12,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(Icons.sentiment_satisfied_alt,),
              ),
              Column(
                children: [
                  Text("")
                ],
              )

            ],
          ),
        ],
      ),
    );
  }
}
