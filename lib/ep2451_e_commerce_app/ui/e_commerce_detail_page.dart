import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class ECommerceDetailPage extends StatefulWidget {
  const ECommerceDetailPage({super.key});

  @override
  State<ECommerceDetailPage> createState() => _ECommerceDetailPageState();
}

class _ECommerceDetailPageState extends State<ECommerceDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: .fromRGBO(238, 238, 238, 1),
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                Expanded(child: PageView(children: [])),
                Expanded(child: Placeholder()),
              ],
            ),
          ),

          Positioned.fill(
            left: 16,
            right: 16,
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back_ios_new_outlined),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.favorite),
                        color: Colors.black,
                      ),
                    ],
                  ),
                  Spacer(),
                  DotsIndicator(dotsCount: 5),
                  Container(
                    height: MediaQuery.sizeOf(context).height / 1.6,
                    decoration: BoxDecoration(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
