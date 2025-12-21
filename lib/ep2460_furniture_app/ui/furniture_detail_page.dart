import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FurnitureDetailPage extends StatefulWidget {
  const FurnitureDetailPage({super.key});

  @override
  State<FurnitureDetailPage> createState() => _FurnitureDetailPageState();
}

class _FurnitureDetailPageState extends State<FurnitureDetailPage> {
  int pageNum = 0;
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Details"),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        backgroundColor: Colors.grey[100],
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 400,
            decoration: BoxDecoration(color: Colors.grey[100]),
            child: Stack(
              children: [
                PageView(
                  controller: pageController,
                  onPageChanged: (idx) {
                    setState(() {
                      pageNum = idx;
                    });
                  },
                  children: [
                    Container(color: Colors.blue),
                    Container(color: Colors.orange),
                    Container(color: Colors.green),
                  ],
                ),
                Positioned(
                  bottom: 24,
                  left: 0,
                  right: 0,
                  child: DotsIndicator(
                    position: pageNum.toDouble(),
                    dotsCount: 3,
                    decorator: DotsDecorator(),
                  ),
                ),
                Positioned(right: 24, bottom: 24, child: Text("${pageNum}/3")),
              ],
            ),
          ),
          // Gap(16),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                crossAxisAlignment: .start,
                spacing: 16,
                children: [
                  Row(
                    spacing: 12,
                    children: [
                      Text("Square stool", style: TextStyle(fontSize: 24)),
                      Container(
                        padding: .symmetric(horizontal: 12, vertical: 4),
                        decoration: ShapeDecoration(
                          shape: StadiumBorder(),
                          color: Colors.black,
                        ),
                        child: Text(
                          "15% off",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 32,
                    child: Row(
                      spacing: 12,
                      children: [
                        Container(
                          height: 32,
                          padding: .symmetric(horizontal: 12),
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(
                              side: BorderSide(color: Colors.grey[400]!),
                            ),
                          ),
                          child: Row(
                            spacing: 5,
                            children: [
                              Icon(Icons.star, size: 18),
                              Text("4.8 Ratings"),
                            ],
                          ),
                        ),
                        Container(
                          height: 32,
                          padding: .symmetric(horizontal: 12),
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(
                              side: BorderSide(color: Colors.grey[400]!),
                            ),
                          ),
                          child: Row(children: [Text("3.2K+ Reviews")]),
                        ),
                        Container(
                          height: 32,
                          padding: .symmetric(horizontal: 12),
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(
                              side: BorderSide(color: Colors.grey[400]!),
                            ),
                          ),
                          child: Row(children: [Text("13K Sold")]),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                    maxLines: 3,
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    "Colors",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  SizedBox(height: 52, child: Placeholder()),
                  Spacer(),

                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: .start,
                        spacing: 6,
                        children: [
                          Text("\$1234", style: TextStyle(fontSize: 12)),
                          Text(
                            "\$1200",
                            style: TextStyle(fontWeight: .bold, fontSize: 20),
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        padding: .symmetric(horizontal: 52, vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: .circular(8),
                        ),
                        child: Row(
                          spacing: 6,
                          mainAxisAlignment: .center,

                          children: [
                            Icon(
                              Icons.shopping_bag_outlined,
                              color: Colors.white,
                            ),
                            Text(
                              "Add to cart",
                              style: TextStyle(color: Colors.white),
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
        ],
      ),
    );
  }
}
