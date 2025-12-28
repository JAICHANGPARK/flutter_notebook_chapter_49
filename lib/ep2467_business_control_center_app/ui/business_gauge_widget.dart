import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BusinessGaugeWidget extends StatelessWidget {
  const BusinessGaugeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.all(12),
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
                crossAxisAlignment: CrossAxisAlignment.start,
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
          Gap(24),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              SizedBox(width: 250, height: 140, child: Placeholder()),
              Positioned(
                bottom: 0,
                child: Column(
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "4.6",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "/5",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class GaugePainter extends CustomPainter {
  final double score;
  final double maxScore;
  final int tickCount;
  final Color activeColor;
  final Color inactiveColor;

  GaugePainter({
    required this.score,
    required this.maxScore,
    required this.tickCount,
    required this.activeColor,
    required this.inactiveColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height);
    final radius = size.width / 2;

    final paint = Paint()
      ..strokeWidth = 3
      ..strokeCap = StrokeCap.round;


    final double tickLength = 15.0;
    final double angelStep = math.pi / (tickCount - 1);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}
