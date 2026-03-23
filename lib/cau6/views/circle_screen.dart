import 'package:bttl3/cau6/widget/drag_circle_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DragCircleScreen extends StatelessWidget {
  const DragCircleScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drag Circle -\n MSSV: 6451071023"),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: const DragCircleWidget(),
    );
  }
}
