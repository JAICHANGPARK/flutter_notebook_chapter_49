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
                Expanded(child: Center(child: Text("Checkout"))),
                IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
              ],
            ),
            Expanded(child: Placeholder()),
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
    );
  }
}
