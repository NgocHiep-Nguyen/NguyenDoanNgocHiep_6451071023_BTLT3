import 'package:flutter/material.dart';
import 'package:bttl3/cau1/widget/tap_box_widget.dart';

class TapBox extends StatelessWidget {
  const TapBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TapDemo-MSSV:6451071023'),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: TapBoxWidget(
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('You tapped the box!')),
            );
          },
        ),
      ),
    );
  }
}
