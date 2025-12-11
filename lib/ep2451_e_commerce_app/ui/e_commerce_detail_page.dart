import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class ECommerceDetailPage extends StatefulWidget {
  const ECommerceDetailPage({super.key});

  @override
  State<ECommerceDetailPage> createState() => _ECommerceDetailPageState();
}

class _ECommerceDetailPageState extends State<ECommerceDetailPage> {
  final PageController? pageController = PageController(initialPage: 0);
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: .fromRGBO(238, 238, 238, 1),
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                Expanded(
                  child: PageView(
                    onPageChanged: (idx) {
                      setState(() {
                        pageIndex = idx;
                      });
                    },
                    controller: pageController,
                    children: [
                      Container(color: Colors.blue),
                      Container(color: Colors.orange),
                    ],
                  ),
                ),
                Expanded(child: Container()),
              ],
            ),
          ),

          Positioned.fill(
            left: 16,
            right: 16,
            bottom: 12,
            child: SafeArea(
              child: Column(
                spacing: 16,
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
                    height: MediaQuery.sizeOf(context).height / 1.95,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
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
