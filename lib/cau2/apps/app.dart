import 'package:flutter/material.dart';
import 'package:bttl3/cau2/views/double_tap_screen.dart';

class Cau2App extends StatelessWidget {
  const Cau2App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DoubleTapScreen(),
    );
  }
}
