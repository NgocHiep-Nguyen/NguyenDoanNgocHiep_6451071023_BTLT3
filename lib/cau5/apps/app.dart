import 'package:flutter/material.dart';
import 'package:bttl3/cau5/views/pointer_screen.dart';

class Cau5App extends StatelessWidget {
  const Cau5App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PointerScreen(),
    );
  }
}
