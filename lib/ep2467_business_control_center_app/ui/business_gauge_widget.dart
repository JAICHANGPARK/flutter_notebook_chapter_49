import 'package:flutter/material.dart';

class BusinessGaugeWidget extends StatelessWidget {
  const BusinessGaugeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey[200]!),
      ),
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
                child: Icon(Icons.sentiment_satisfied_alt),
              ),
              Column(
                spacing: 4,
                children: [
                  Text(
                    "Customer Sentiment",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text("Aggregated from emails reviews chats"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
