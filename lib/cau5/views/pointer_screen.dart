import 'package:flutter/material.dart';
import 'package:bttl3/cau5/widget/pointer_widget.dart';

class PointerScreen extends StatelessWidget {
  const PointerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pointer Events \n MSSV: 6451071023'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: const Center(child: PointerWidget()),
    );
  }
}
