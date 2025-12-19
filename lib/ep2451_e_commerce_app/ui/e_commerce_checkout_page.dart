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
                  onPressed: () => Navigator.pop(context),
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
                            // height: 140,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            padding: .all(12),
                            margin: .only(bottom: 12),
                            child: Row(
                              spacing: 8,
                              mainAxisAlignment: .spaceBetween,
                              children: [
                                Container(
                                  height: 120,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: .spaceBetween,
                                    crossAxisAlignment: .start,
                                    children: [
                                      Row(
                                        crossAxisAlignment: .start,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              "Puffed Ace Shirt Jacket",
                                              style: GoogleFonts.akshar(
                                                fontWeight: .bold,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                          Icon(Icons.clear),
                                        ],
                                      ),
                                      Text("Grey, M"),
                                      Row(
                                        mainAxisAlignment: .spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment: .start,
                                            children: [
                                              Text(
                                                "\$225.00",
                                                style: GoogleFonts.akshar(
                                                  color: Colors.grey,
                                                  fontSize: 12,
                                                  decoration: .lineThrough,
                                                ),
                                              ),
                                              Text(
                                                "\$220.00",
                                                style: GoogleFonts.akshar(
                                                  fontSize: 16,
                                                  fontWeight: .bold,
                                                ),
                                              ),
                                            ],
                                          ),

                                          Container(
                                            decoration: ShapeDecoration(
                                              shape: StadiumBorder(
                                                side: BorderSide(),
                                              ),
                                            ),
                                            padding: .symmetric(
                                              horizontal: 4,
                                              vertical: 4,
                                            ),
                                            child: Row(
                                              spacing: 12,
                                              children: [
                                                Icon(Icons.remove),
                                                Text("1"),
                                                Icon(Icons.add),
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
                    Gap(24),
                    Container(
                      padding: .only(top: 16, bottom: 16, left: 16, right: 16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: .circular(6),
                      ),
                      child: Row(
                        spacing: 8,
                        children: [
                          Text(
                            "Promocode",
                            style: GoogleFonts.akshar(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),
                          Container(
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(side: BorderSide()),
                            ),
                            padding: .symmetric(horizontal: 12, vertical: 4),
                            child: Text("-20%"),
                          ),
                          Spacer(),
                          Text(
                            "Fall25",
                            style: GoogleFonts.akshar(
                              fontSize: 20,
                              fontWeight: .bold,
                            ),
                          ),
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
                                "Continue to Pay",
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
