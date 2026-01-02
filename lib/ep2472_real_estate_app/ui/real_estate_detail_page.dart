import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RealEstateDetailPage extends StatefulWidget {
  const RealEstateDetailPage({super.key});

  @override
  State<RealEstateDetailPage> createState() => _RealEstateDetailPageState();
}

class _RealEstateDetailPageState extends State<RealEstateDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(height: 320, child: Placeholder()),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          Text("Unique 3 Bedroom Flat"),
                          Text("\$449.00"),
                        ],
                      ),
                    ),
                    Row(
                      spacing: 12,
                      children: [
                        CircleAvatar(),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Posted by Dream"),
                              Row(
                                children: [
                                  Icon(Icons.star, color: Colors.deepOrange),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
