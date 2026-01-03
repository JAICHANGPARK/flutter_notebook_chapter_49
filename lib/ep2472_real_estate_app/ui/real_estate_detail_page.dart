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
      backgroundColor: Colors.grey[100]!,
      body: Column(
        children: [
          Container(
            height: 320,
            decoration: BoxDecoration(color: Colors.grey),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      child: Icon(Icons.arrow_back_ios_new_outlined),
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      child: Icon(Icons.favorite_border),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Spacer(),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      child: Icon(Icons.share),
                    ),

                  ],
                )
              ]),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: SingleChildScrollView(
                child: Column(
                  spacing: 16,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                  Icon(
                                    Icons.star,
                                    color: Colors.deepOrange,
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.deepOrange,
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.deepOrange,
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.deepOrange,
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star_border_outlined,
                                    color: Colors.deepOrange,
                                    size: 16,
                                  ),
                                  Spacer(),
                                  Text("4.5 Ratings"),
                                  Text("32 reviews"),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      spacing: 24,
                      children: [
                        Expanded(
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
                            maxLines: 2,
                          ),
                        ),
                        Container(height: 80, width: 180, child: Placeholder()),
                      ],
                    ),
                    Divider(),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur",
                      maxLines: 3,
                    ),
                    SizedBox(
                      height: 120,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 140,
                            margin: EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(color: Colors.white),
                          );
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Popular Amenities"),
                        TextButton(onPressed: () {}, child: Text("See all")),
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
