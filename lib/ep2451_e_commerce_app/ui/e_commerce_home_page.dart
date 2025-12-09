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
      body: SafeArea(
        child: Column(
          spacing: 16,
          children: [
            Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                ExcludeFocus(
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.black),
                      child: Text("MODE", style: GoogleFonts.akshar()),
                    ),
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              ],
            ),
            Text("Popular categories"),
            SizedBox(height: 52),
          ],
        ),
      ),
    );
  }
}
