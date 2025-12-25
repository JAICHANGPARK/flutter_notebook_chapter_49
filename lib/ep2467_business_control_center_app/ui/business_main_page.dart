import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BusinessMainPage extends StatefulWidget {
  const BusinessMainPage({super.key});

  @override
  State<BusinessMainPage> createState() => _BusinessMainPageState();
}

class _BusinessMainPageState extends State<BusinessMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text("Business"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
      ),
      body: IndexedStack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    spacing: 8,
                    children: [
                      Text("Dashboard", style: TextStyle(fontSize: 22)),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[300]!,
                              spreadRadius: 1,
                              blurRadius: 1,
                            ),
                          ],
                        ),
                        child: Icon(Icons.share, size: 18),
                      ),
                      Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[300]!,
                              spreadRadius: 1,
                              blurRadius: 1,
                            ),
                          ],
                        ),
                        child: Icon(Icons.grid_on, size: 18),
                      ),
                      Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[300]!,
                              spreadRadius: 1,
                              blurRadius: 1,
                            ),
                          ],
                        ),
                        child: Icon(Icons.add, size: 18),
                      ),
                    ],
                  ),
                  Gap(24),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[300]!,
                          spreadRadius: 1,
                          blurRadius: 1,
                        ),
                      ],
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(height: 140, child: Placeholder()),
                        Gap(12),
                        SizedBox(height: 12, child: Placeholder()),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey[200]!, blurRadius: 2, spreadRadius: 2),
          ],
        ),
        padding: EdgeInsets.only(left: 24, right: 24, bottom: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(9),
              decoration: BoxDecoration(
                color: Colors.orange[50],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(Icons.view_sidebar_outlined, color: Colors.orange),
            ),
            Container(
              padding: EdgeInsets.all(9),
              decoration: BoxDecoration(
                // color: Colors.grey[50],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(Icons.route, color: Colors.grey),
            ),
            Container(
              padding: EdgeInsets.all(9),
              decoration: BoxDecoration(
                // color: Colors.grey[50],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(Icons.calendar_month, color: Colors.grey),
            ),
            Container(
              padding: EdgeInsets.all(9),
              decoration: BoxDecoration(
                // color: Colors.grey[50],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(Icons.chat, color: Colors.grey),
            ),
            Container(
              padding: EdgeInsets.all(9),
              decoration: BoxDecoration(
                // color: Colors.grey[50],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(Icons.account_circle_outlined, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
