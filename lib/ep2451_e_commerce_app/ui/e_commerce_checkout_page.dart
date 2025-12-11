import 'package:flutter/material.dart';

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
          ],
        ),
      ),
    );
  }
}
