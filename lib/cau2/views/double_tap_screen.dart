import 'package:flutter/material.dart';
import 'package:bttl3/cau2/widget/color_box_widget.dart';

class DoubleTapScreen extends StatelessWidget {
  const DoubleTapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Double Tap Demo\n MSSV: 6451071023'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: const Center(child: ColorBoxWidget()),
    );
  }
}
