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
                  DotsIndicator(
                    dotsCount: 5,
                    position: pageIndex.toDouble(),
                    decorator: DotsDecorator(activeColor: Colors.white),
                  ),
                  Container(
                    height: MediaQuery.sizeOf(context).height / 1.95,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: .all(16),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        Text("Microsuede Cropped Braxton Hoodie"),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                          maxLines: 2,
                        ),
                        Text("Read more"),
                        Text("Color:"),
                        Row(
                          children: [
                            Container(
                              height: 42,
                              width: 42,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(),
                              ),
                              padding: .all(3),
                              child: CircleAvatar(
                                backgroundColor: Colors.black,
                              ),
                            ),
                            Container(
                              height: 42,
                              width: 42,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                // border: Border.all(),
                              ),
                              padding: .all(3),
                              child: CircleAvatar(backgroundColor: Colors.grey),
                            ),
                            Container(
                              height: 42,
                              width: 42,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                // border: Border.all(),
                              ),
                              padding: .all(3),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Text("Size:"),
                        Row(
                          children: ["S", "M", "L", "XL", "XXL"].map(
                            (e) => Container(
                              padding: .symmetric(horizontal: 12, vertical: 6),
                              decoration: ShapeDecoration(
                                shape: StadiumBorder(side: BorderSide()),
                              ),
                              child: Text("$e"),
                            ),
                          ).toList(),
                        ),
                      ],
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
