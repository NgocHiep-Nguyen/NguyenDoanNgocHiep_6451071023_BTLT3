import 'package:flutter/material.dart';

class TapBoxWidget extends StatelessWidget {
  final VoidCallback onTap;

  const TapBoxWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 200,
        height: 200,
        color: Colors.blue, 
      ),
    );
  }
}
