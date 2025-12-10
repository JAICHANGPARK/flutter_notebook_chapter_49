import 'package:flutter/material.dart';
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
              height: 160,
              decoration: BoxDecoration(color: Colors.black),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(12, 16, 0, 12),
                child: Column(
                  children: [
                    Row(
                      spacing: 12,
                      children: [
                        Text(
                          "Your order",
                          style: GoogleFonts.akshar(
                            color: Colors.white,
                            fontSize: 18,
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
                            style: GoogleFonts.akshar(color: Colors.white),
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
                  ],
                ),
              ),
            ),
            Row(
              spacing: 9,
              children: [
                Text("New arrivals"),
                Container(
                  decoration: ShapeDecoration(shape: StadiumBorder()),
                  child: Text("limited"),
                ),
                Spacer(),
                Container(
                  decoration: ShapeDecoration(shape: StadiumBorder()),
                  child: Row(
                    children: [
                      Text("Veiw all"),
                      Icon(Icons.keyboard_arrow_right_sharp),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(child: Placeholder()),
            Container(height: 72, child: Placeholder()),
          ],
        ),
      ),
    );
  }
}
