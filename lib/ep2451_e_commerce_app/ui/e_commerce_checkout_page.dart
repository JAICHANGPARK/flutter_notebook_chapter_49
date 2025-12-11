import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class ECommerceCheckoutPage extends StatefulWidget {
  const ECommerceCheckoutPage({super.key});

  @override
  State<ECommerceCheckoutPage> createState() => _ECommerceCheckoutPageState();
}

class _ECommerceCheckoutPageState extends State<ECommerceCheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: .fromRGBO(238, 238, 238, 1),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back_ios_new_outlined),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      "Checkout",
                      style: GoogleFonts.akshar(
                        fontSize: 24,
                        fontWeight: .bold,
                      ),
                    ),
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(color: Colors.white),
                            padding: .all(12),
                            margin: .only(bottom: 12),
                            child: Row(
                              children: [
                                Container(
                                  height: 120,
                                  width: 120,
                                  decoration: BoxDecoration(color: Colors.grey),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              "Puffed Ace Shirt Jacket",
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.clear),
                                          ),
                                        ],
                                      ),
                                      Text("Grey, M"),
                                      Row(
                                        children: [
                                          Text("\$225.00"),
                                          Container(
                                            decoration: ShapeDecoration(
                                              shape: StadiumBorder(
                                                side: BorderSide(),
                                              ),
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
                    Gap(16),
                    Container(
                      decoration: BoxDecoration(color: Colors.white),
                      child: Row(
                        children: [
                          Text("Promocode"),
                          Container(
                            decoration: ShapeDecoration(shape: StadiumBorder()),
                            child: Text("-20%"),
                          ),
                          Spacer(),
                          Text("Fall25"),
                        ],
                      ),
                    ),
                    Gap(120),
                    Row(
                      children: [
                        Column(
                          spacing: 2,
                          crossAxisAlignment: .start,

                          children: [
                            Text(
                              "\$260.00",

                              style: GoogleFonts.akshar(
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              "\$220.00",
                              style: GoogleFonts.akshar(
                                decoration: TextDecoration.lineThrough,
                                fontSize: 24,
                                fontWeight: .bold,
                              ),
                            ),
                          ],
                        ),
                        Gap(32),
                        Expanded(
                          child: Container(
                            height: 62,
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Colors.black,
                            ),
                            child: Center(
                              child: Text(
                                "Add to cart",
                                style: GoogleFonts.akshar(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
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
      ),
    );
  }
}
