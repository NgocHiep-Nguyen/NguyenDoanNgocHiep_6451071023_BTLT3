import 'package:flutter/material.dart';
import 'package:bttl3/cau3/views/long_press_screen.dart';

class Cau3App extends StatelessWidget {
  const Cau3App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LongPressScreen(),
    );
  }
}
