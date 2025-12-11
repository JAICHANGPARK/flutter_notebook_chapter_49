import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class ECommerceHomePage extends StatefulWidget {
  const ECommerceHomePage({super.key});

  @override
  State<ECommerceHomePage> createState() => _ECommerceHomePageState();
}

class _ECommerceHomePageState extends State<ECommerceHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: .fromRGBO(238, 238, 238, 1),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: .start,
          spacing: 16,
          children: [
            Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                Expanded(
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 2),
                      decoration: BoxDecoration(color: Colors.black),
                      child: Text(
                        "MODE",
                        style: GoogleFonts.akshar(
                          color: Colors.white,
                          fontSize: 32,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              ],
            ),
            Gap(4),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                spacing: 12,
                crossAxisAlignment: .start,
                children: [
                  Text(
                    "Popular categories",
                    style: GoogleFonts.akshar(fontSize: 20),
                  ),
                  SizedBox(
                    height: 32,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children:
                            ["Tops", "Denim", "Footwear", "Bottoms", "Life"]
                                .map(
                                  (e) => Container(
                                    margin: .only(right: 8),
                                    padding: .symmetric(horizontal: 12),
                                    decoration: ShapeDecoration(
                                      shape: StadiumBorder(side: BorderSide()),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "$e",
                                        style: GoogleFonts.akshar(fontSize: 16),
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: 220,
              decoration: BoxDecoration(color: Colors.black),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 16, 16, 12),

                    child: Row(
                      spacing: 12,
                      children: [
                        Text(
                          "Your order",
                          style: GoogleFonts.akshar(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        Container(
                          padding: .symmetric(horizontal: 12, vertical: 2),
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(
                              side: BorderSide(color: Colors.white),
                            ),
                          ),
                          child: Text(
                            "3 items",
                            style: GoogleFonts.akshar(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding: .symmetric(horizontal: 8, vertical: 2),
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(
                              side: BorderSide(color: Colors.white),
                            ),
                            color: Colors.white,
                          ),
                          child: Row(
                            spacing: 6,
                            children: [
                              Text(
                                "View all",
                                style: GoogleFonts.akshar(color: Colors.black),
                              ),
                              Icon(Icons.keyboard_arrow_right, size: 16),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 0, 12),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 300,
                            margin: EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white,
                            ),
                            padding: EdgeInsets.all(12),
                            child: Row(
                              children: [
                                Container(
                                  height: 120,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),

                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 12),
                                    child: Column(
                                      mainAxisAlignment: .spaceBetween,
                                      crossAxisAlignment: .start,
                                      children: [
                                        Text(
                                          "Boucle Puffed Ace Shirt Jacket",
                                          style: GoogleFonts.akshar(
                                            fontSize: 16,
                                          ),
                                        ),
                                        Text(
                                          "Dream",
                                          style: GoogleFonts.akshar(
                                            fontSize: 12,
                                          ),
                                        ),
                                        Text(
                                          "\$199.99",
                                          style: GoogleFonts.akshar(
                                            fontSize: 20,
                                            fontWeight: .bold,
                                          ),
                                        ),
                                        Container(
                                          decoration: ShapeDecoration(
                                            shape: StadiumBorder(
                                              side: BorderSide(),
                                            ),
                                          ),
                                          padding: .symmetric(
                                            horizontal: 12,
                                            vertical: 4,
                                          ),
                                          child: Text(
                                            "Today",
                                            style: GoogleFonts.akshar(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                spacing: 9,
                children: [
                  Text("New arrivals", style: TextStyle(fontSize: 20)),
                  Container(
                    padding: .symmetric(horizontal: 8, vertical: 2),
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(side: BorderSide()),
                    ),
                    child: Text("limited", style: TextStyle(fontSize: 12)),
                  ),
                  Spacer(),
                  Container(
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Colors.black,
                    ),
                    padding: .symmetric(horizontal: 8, vertical: 4),
                    child: Row(
                      spacing: 6,
                      children: [
                        Text(
                          "Veiw all",
                          style: GoogleFonts.akshar(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right_sharp,
                          color: Colors.white,
                          size: 14,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Row(
                  spacing: 12,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: .start,
                          spacing: 4,
                          mainAxisAlignment: .spaceBetween,
                          children: [
                            Container(
                              height: 160,
                              width: .infinity,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    child: Icon(Icons.favorite_border),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "Men's Casual Denium Marvin Bomber",
                              style: GoogleFonts.akshar(fontSize: 16),
                            ),
                            Text(
                              "\$199.99",
                              style: GoogleFonts.akshar(
                                fontSize: 20,
                                fontWeight: .bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 72,
              child: Placeholder(),
              margin: EdgeInsets.only(bottom: 16),
            ),
          ],
        ),
      ),
    );
  }
}
