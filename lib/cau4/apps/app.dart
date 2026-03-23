import 'package:flutter/material.dart';
import 'package:bttl3/cau4/views/tap_counter_screen.dart';

class Cau4App extends StatelessWidget {
  const Cau4App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TapCounterScreen(),
    );
  }
}
