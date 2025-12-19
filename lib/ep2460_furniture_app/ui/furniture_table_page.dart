import 'package:flutter/material.dart';

class FurnitureTablePage extends StatefulWidget {
  const FurnitureTablePage({super.key});

  @override
  State<FurnitureTablePage> createState() => _FurnitureTablePageState();
}

class _FurnitureTablePageState extends State<FurnitureTablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Table"),
        centerTitle: true,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: .78,
            ),
            itemBuilder: (context, index) {
              return Container(
                color: Colors.blue,
                child: Column(
                  crossAxisAlignment: .start,
                  spacing: 16,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: .circular(16),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 12,
                              right: 12,
                              child: Container(
                                decoration: ShapeDecoration(
                                  shape: StadiumBorder(),
                                  color: Colors.black,
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                child: Text(
                                  "15% off",
                                  style: TextStyle(color: Colors.white,
                                  fontSize: 12,),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      spacing: 8,
                      crossAxisAlignment: .start,
                      children: [
                        Text(
                          "Square stool",
                          style: TextStyle(fontWeight: .bold, fontSize: 16),
                        ),
                        Row(
                          spacing: 6,
                          children: [
                            Text(
                              "\$135.00",
                              style: TextStyle(fontWeight: .bold, fontSize: 16),
                            ),
                            Spacer(),
                            Icon(Icons.star, color: Colors.yellow, size: 18),
                            Text("5.0", style: TextStyle(fontSize: 16)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
