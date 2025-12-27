import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BusinessTrafficCardWidget extends StatelessWidget {
  const BusinessTrafficCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [BoxShadow(color: Colors.grey[300]!,
        spreadRadius: 2)],
      ),
      padding: EdgeInsets.all(12),
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
                    "Business Traffics",
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
                  Icon(Icons.arrow_upward, size: 14, color: Color(0xFF009B60)),
                  Text(
                    "5.2% vs yesterday",
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xFF009B60),
                      fontWeight: .w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Gap(12),
          SegmentedBar(
            totalSegments: 40,
            segments: [
              SegmentData(color: Color(0xFFFF6B00), count: 22),
              SegmentData(color: Color(0xFFCADD60), count: 12),
              SegmentData(color: Color(0xFF009B60), count: 6),
            ],
          ),
          Gap(24),
          PlatformRow(
            color: Color(0xFFFF6B00),
            icon: Icons.language,
            name: "Website",
            value: "10.24K",
            percent: "34.7%",
            isUp: true,
          ),
          Gap(20),
          PlatformRow(
            color: Color(0xFFCADD60),
            icon: Icons.storefront_outlined,
            name: "Marketplace",
            value: "180K",
            percent: "80.5%",
            isUp: true,
          ),
          Gap(20),
          PlatformRow(
            color: Color(0xFF009B60),
            icon: Icons.local_shipping_outlined,
            name: "Retail POS",
            value: "590",
            percent: "15.6%",
            isUp: false,
          ),
        ],
      ),
    );
  }
}

class SegmentData {
  final int count;
  final Color color;

  SegmentData({required this.color, required this.count});
}

class SegmentedBar extends StatelessWidget {
  final int totalSegments;
  final List<SegmentData> segments;

  const SegmentedBar({
    super.key,
    required this.totalSegments,
    required this.segments,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> bars = [];
    for (var segment in segments) {
      for (int i = 0; i < segment.count; i++) {
        bars.add(
          Expanded(
            child: Container(
              height: 40,
              margin: EdgeInsets.symmetric(horizontal: 1.5),
              decoration: BoxDecoration(
                color: segment.color,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
        );
      }
    }
    return Row(children: bars);
  }
}

class PlatformRow extends StatelessWidget {
  const PlatformRow({
    super.key,
    required this.color,
    required this.icon,
    required this.name,
    required this.value,
    required this.percent,
    required this.isUp,
  });

  final Color color;
  final IconData icon;
  final String name;
  final String value;
  final String percent;
  final bool isUp;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        Gap(12),
        Icon(icon, color: Colors.black87),
        Gap(8),
        Text(name, style: TextStyle(fontSize: 16, color: Colors.black54)),
        Spacer(),
        Text(
          value,
          style: TextStyle(
            fontSize: 16,
            fontWeight: .bold,
            color: Colors.black87,
          ),
        ),
        Gap(24),
        SizedBox(
          width: 60,
          child: Row(
            children: [
              Icon(
                isUp ? Icons.arrow_upward : Icons.arrow_downward,
                size: 14,
                color: isUp ? Color(0xFF009B60) : Color(0xFFE53935),
              ),
              Gap(2),
              Text(
                percent,
                style: TextStyle(
                  fontWeight: .bold,
                  color: isUp ? Color(0xFF009B60) : Color(0xFFE53935),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
