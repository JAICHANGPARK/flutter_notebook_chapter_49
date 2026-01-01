import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RealEstateHomePage extends StatefulWidget {
  const RealEstateHomePage({super.key});

  @override
  State<RealEstateHomePage> createState() => _RealEstateHomePageState();
}

class _RealEstateHomePageState extends State<RealEstateHomePage> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: .topRight,
                  end: .bottomCenter,
                  stops: [.05, .2],
                  colors: [
                    Color.fromRGBO(204, 238, 240, 1),
                    Color.fromRGBO(245, 245, 245, 1),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            child: SafeArea(
              bottom: false,
              child: Padding(
                padding: EdgeInsets.only(top: 16),
                child: Column(
                  spacing: 20,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        spacing: 15,
                        children: [
                          Container(
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Colors.white,
                            ),
                            padding: EdgeInsets.all(4),
                            child: Row(
                              spacing: 8,
                              children: [
                                Container(
                                  height: 42,
                                  width: 42,
                                  child: Stack(
                                    children: [
                                      CircleAvatar(radius: 24),
                                      Positioned(
                                        right: 0,
                                        bottom: 0,
                                        child: Icon(Icons.verified, size: 18),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.star, size: 16),
                                        Text(
                                          '4.5',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "Dream",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black87,
                                      ),
                                    ),
                                  ],
                                ),
                                Gap(2),
                                Switch.adaptive(
                                  value: false,
                                  onChanged: (value) {
                                    setState(() {
                                      switchValue = value;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Location"),
                              Row(
                                children: [
                                  Text(
                                    "SEOUL, KR",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Icon(Icons.keyboard_arrow_down),
                                ],
                              ),
                            ],
                          ),
                          Spacer(),
                          CircleAvatar(
                            radius: 26,
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            child: Icon(Icons.search),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 42,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 16, right: 16),
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Colors.white,
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              children: [
                                Icon(Icons.filter_list),
                                Text("Filter"),
                              ],
                            ),
                          ),
                          Container(
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Color.fromRGBO(0, 171, 180, 1),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Text(
                                  "Real Estate",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(
                                side: BorderSide(color: Colors.grey[300]!),
                              ),
                              color: Colors.white,
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Text(
                                  "Cars",
                                  // style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(
                                side: BorderSide(color: Colors.grey[300]!),
                              ),
                              color: Colors.white,
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Text(
                                  "Market",
                                  // style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16, right: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Featured properties",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  foregroundColor: Color.fromRGBO(
                                    0,
                                    171,
                                    180,
                                    1,
                                  ),
                                ),
                                child: Text("See all"),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 16),
                          height: 320,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                width: 320,
                                margin: EdgeInsets.only(right: 12),
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(24),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey[100]!,
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  spacing: 12,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 6,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            24,
                                          ),
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              "https://pixabay.com/ko/images/download/home-1622401_1920.jpg",
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                          color: Colors.blue,
                                        ),
                                        padding: EdgeInsets.all(12),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  decoration: ShapeDecoration(
                                                    shape: StadiumBorder(),
                                                    color: Colors.black38,
                                                  ),
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 15,
                                                    vertical: 12,
                                                  ),
                                                  child: Text(
                                                    "New Price",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                                CircleAvatar(
                                                  child: Icon(
                                                    Icons.favorite_border,
                                                  ),
                                                  backgroundColor:
                                                      Colors.white12,
                                                  foregroundColor: Colors.black,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 4,
                                      child: Column(
                                        spacing: 8,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "Sherman Oaks",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                ),
                                              ),
                                              Spacer(),
                                              Text(
                                                "\$2300",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              ),
                                              Text(
                                                "/month",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.location_on,
                                                size: 18,
                                                color: Color.fromRGBO(
                                                  0,
                                                  171,
                                                  180,
                                                  1,
                                                ),
                                              ),
                                              Text(
                                                "ABCD Spring EF 0879, UNKNOWN",
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Gap(4),
                                          Row(
                                            children: [
                                              Container(
                                                decoration: ShapeDecoration(
                                                  shape: StadiumBorder(
                                                    side: BorderSide(
                                                      color: Colors.grey[300]!,
                                                    ),
                                                  ),
                                                ),
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 15,
                                                  vertical: 6,
                                                ),
                                                child: Row(
                                                  spacing: 8,
                                                  children: [
                                                    Icon(Icons.bed),
                                                    Text("3"),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                decoration: ShapeDecoration(
                                                  shape: StadiumBorder(
                                                    side: BorderSide(
                                                      color: Colors.grey[300]!,
                                                    ),
                                                  ),
                                                ),
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 15,
                                                  vertical: 6,
                                                ),
                                                child: Row(
                                                  spacing: 8,
                                                  children: [
                                                    Icon(
                                                      Icons.bathtub_outlined,
                                                    ),
                                                    Text("3"),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                decoration: ShapeDecoration(
                                                  shape: StadiumBorder(
                                                    side: BorderSide(
                                                      color: Colors.grey[300]!,
                                                    ),
                                                  ),
                                                ),
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 15,
                                                  vertical: 6,
                                                ),
                                                child: Row(
                                                  spacing: 8,
                                                  children: [
                                                    Icon(Icons.square_outlined),
                                                    Text("2600 sqft"),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),

                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16, right: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Nearby",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  foregroundColor: Color.fromRGBO(
                                    0,
                                    171,
                                    180,
                                    1,
                                  ),
                                ),
                                child: Text("See all"),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 16),
                          height: 180,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                width: 180,
                                margin: EdgeInsets.only(right: 12),
                                child: Container(
                                  decoration: ShapeDecoration(
                                    color: Colors.orange,
                                    shape: RoundedSuperellipseBorder(
                                      borderRadius: .circular(32),
                                    ),
                                  ),
                                  padding: EdgeInsets.all(12),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 12,
                                              vertical: 8,
                                            ),
                                            decoration: ShapeDecoration(
                                              shape: StadiumBorder(),
                                              color: Colors.black38,
                                            ),
                                            child: Text(
                                              "New Price",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      CircleAvatar(
                                        child: Icon(Icons.favorite),
                                        foregroundColor: Color.fromRGBO(
                                          0,
                                          171,
                                          180,
                                          1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: .bottomCenter,
            child: Container(
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: Colors.white,
              ),
              margin: EdgeInsets.only(bottom: 32),
              child: Row(
                mainAxisSize: .min,
                children: [
                  CircleAvatar(radius: 30),
                  CircleAvatar(radius: 30),
                  CircleAvatar(radius: 30),
                  CircleAvatar(radius: 30),
                  CircleAvatar(radius: 30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
