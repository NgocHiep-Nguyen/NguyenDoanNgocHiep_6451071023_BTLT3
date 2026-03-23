import 'package:flutter/material.dart';
import 'package:bttl3/cau4/widget/tap_counter_widget.dart';

class TapCounterScreen extends StatelessWidget {
  const TapCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tap Counter \nMSSV: 6451071023'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: const Center(child: TapCounterWidget()),
    );
  }
}
