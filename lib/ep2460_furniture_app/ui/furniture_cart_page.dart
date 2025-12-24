import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FurnitureCartPage extends StatefulWidget {
  const FurnitureCartPage({super.key});

  @override
  State<FurnitureCartPage> createState() => _FurnitureCartPageState();
}

class _FurnitureCartPageState extends State<FurnitureCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100]!,
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        centerTitle: true,
        title: Text("My cart"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 16, 16, 0),
              child: Column(
                crossAxisAlignment: .start,
                spacing: 12,
                children: [
                  Text(
                    "Total (09) items",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(bottom: 12),
                          decoration: BoxDecoration(color: Colors.white),
                          padding: .all(16),
                          child: Row(
                            spacing: 15,
                            children: [
                              Container(
                                height: 120,
                                width: 82,
                                color: Colors.blue,
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Modern black chair"),
                                        Icon(Icons.delete_outline),
                                      ],
                                    ),
                                    Gap(4),
                                    Row(
                                      children: [
                                        Text("Color:"),
                                        Text("#000000"),
                                      ],
                                    ),
                                    Gap(8),
                                    Row(
                                      children: [
                                        Text(
                                          "\$80.0",
                                          style: TextStyle(
                                            decoration: .lineThrough,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Text("\$70.0"),
                                        Spacer(),
                                        CircleAvatar(
                                          radius: 16,
                                          backgroundColor: Colors.grey[300]!,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 12),
                                          child: Text("1"),
                                        ),
                                        CircleAvatar(
                                          radius: 16,
                                          backgroundColor: Colors.grey[300]!,
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
                ],
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: .only(
                topLeft: .circular(12),
                topRight: .circular(12),
              ),
            ),
            child: Column(
              spacing: 12,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Total Price"), Text("\$9000")],
                ),
                Divider(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: .circular(12),
                    color: Colors.black,
                  ),
                  padding: .symmetric(vertical: 12),
                  child: Row(
                    spacing: 4,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.credit_card, color: Colors.white),
                      Text("Checkout", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
