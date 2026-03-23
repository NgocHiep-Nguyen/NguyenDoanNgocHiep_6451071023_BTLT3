import 'package:bttl3/cau8/widget/iteract_grid.dart';
import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridLayout - \n MSSV: 6451071023"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: const InteractGrid(),
    );
  }
}
