import 'package:flutter/material.dart';

class RealEstateHomePage extends StatefulWidget {
  const RealEstateHomePage({super.key});

  @override
  State<RealEstateHomePage> createState() => _RealEstateHomePageState();
}

class _RealEstateHomePageState extends State<RealEstateHomePage> {
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: ShapeDecoration(
                        shape: StadiumBorder(),
                        color: Colors.white,
                      ),
                    ),
                    Column(
                      children: [
                        Text("Location"),
                        Row(
                          children: [
                            
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
