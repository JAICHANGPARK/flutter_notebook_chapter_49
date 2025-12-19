import 'package:flutter/material.dart';

class FurnitureDetailPage extends StatefulWidget {
  const FurnitureDetailPage({super.key});

  @override
  State<FurnitureDetailPage> createState() => _FurnitureDetailPageState();
}

class _FurnitureDetailPageState extends State<FurnitureDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Details"),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        backgroundColor: Colors.grey[100],
      ),
      body: Column(
        children: [
          Container(
            height: 420,
            decoration: BoxDecoration(color: Colors.grey[100]),
          ),
          Row(
            children: [
              Text("Square stool"),
              Container(
                decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: Colors.black,
                ),
                child: Text("15% off"),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                decoration: ShapeDecoration(
                  shape: StadiumBorder(
                    side: BorderSide(color: Colors.grey[400]!),
                  ),
                ),
                child: Row(children: [Icon(Icons.star), Text("4.8 Ratings")]),
              ),
              Container(
                decoration: ShapeDecoration(
                  shape: StadiumBorder(
                    side: BorderSide(color: Colors.grey[400]!),
                  ),
                ),
                child: Row(children: [Text("3.2K+ Reviews")]),
              ),
              Container(
                decoration: ShapeDecoration(
                  shape: StadiumBorder(
                    side: BorderSide(color: Colors.grey[400]!),
                  ),
                ),
                child: Row(children: [Text("13K Sold")]),
              ),
            ],
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
            maxLines: 3,
          ),
          Text("Colors"),
          SizedBox(height: 52, child: Placeholder()),
          Row(
            children: [
              Column(children: [Text("\$12345"), Text("\$1200")]),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(color: Colors.black),
                  child: Row(
                    mainAxisAlignment: .center,

                    children: [
                      Icon(Icons.shopping_bag_outlined,
                      color: Colors.white,),
                      Text(
                        "Add to cart",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
