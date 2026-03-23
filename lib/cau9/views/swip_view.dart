import 'package:bttl3/cau9/widget/image_swipe_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SwipeView extends StatelessWidget {
  const SwipeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Swipe View -\n  MSSV: 6451071023"),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        elevation: 2,
      ),
      body: const ImageSwipeWidget(),
    );
  }
}
