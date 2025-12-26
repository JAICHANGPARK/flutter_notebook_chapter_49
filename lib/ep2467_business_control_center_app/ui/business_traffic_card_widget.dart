import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BusinessTrafficCardWidget extends StatelessWidget {
  const BusinessTrafficCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Row(
            spacing: 16,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFFFFF0E0),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(Icons.traffic_outlined, color: Color(0xFFFF6B00)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Business Traffices",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Keep an eye to your business orders",
                    style: TextStyle(fontSize: 13, color: Colors.grey[500]!),
                  ),
                ],
              ),
              Spacer(),
              Icon(Icons.more_vert, color: Colors.grey[400]!),
            ],
          ),
          Gap(24),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                  children: [
                    TextSpan(
                      text: "240K",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    TextSpan(text: " / 500K M Traffic targets"),
                  ],
                ),
              ),
              Row(
                spacing: 4,
                children: [
                  Icon(Icons.arrow_upward, size: 14,
                  color: Color(0xFF009B60),),
                  Text("5.2% vs yesterday",style: TextStyle(
                    fontSize: 13,
                    color: Color(0xFF009B60),
                    fontWeight: .w500,

                  ),)
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
