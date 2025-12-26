import 'package:flutter/material.dart';

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
                child: Icon(Icons.traffic_outlined,
                color: Color(0xFFFF6B00),),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

              ],)

            ],
          ),
        ],
      ),
    );
  }
}
