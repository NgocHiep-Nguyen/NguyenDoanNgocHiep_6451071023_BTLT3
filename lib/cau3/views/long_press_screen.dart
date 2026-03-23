import 'package:flutter/material.dart';
import 'package:bttl3/cau3/widget/press_card_widget.dart';

class LongPressScreen extends StatelessWidget {
  const LongPressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Long Press Demo \n MSSV: 64541071023'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: PressCardWidget(
          onLongPress: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Long press detected')),
            );
          },
        ),
      ),
    );
  }
}
