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
          crossAxisAlignment: .start,
          spacing: 16,
          children: [
            Row(

              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                Expanded(
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.black),
                      child: Text("MODE", style: GoogleFonts.akshar(
                        color: Colors.white,
                        fontSize: 32,
                        height: 0,
                      )),
                    ),
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              ],
            ),
            Text("Popular categories"),
            SizedBox(height: 52, child: Placeholder()),
            Container(height: 160, child: Placeholder()),
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
            Container(
              height: 72,
              child: Placeholder(),
            )
          ],
        ),
      ),
    );
  }
}
