import 'package:flutter/material.dart';

class HorizontalActivityCardWidget extends StatefulWidget {
  const HorizontalActivityCardWidget({super.key});

  @override
  State<HorizontalActivityCardWidget> createState() => _HorizontalActivityCardWidgetState();
}

class _HorizontalActivityCardWidgetState extends State<HorizontalActivityCardWidget> {

  ScrollController? _scrollController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController(initialScrollOffset: 0);
    _scrollController?.addListener((){
      print("${_scrollController?.offset}");
    });

  }
  @override
  void dispose() {
    // TODO: implement dispose
    _scrollController?.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      controller: _scrollController,
      itemBuilder: (context, index) {
        return Container(
          width: 180,
          margin: EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: .circular(16),
          ),
        );
      },
    );
  }
}
