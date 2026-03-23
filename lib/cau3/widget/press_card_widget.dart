import 'package:flutter/material.dart';

class PressCardWidget extends StatelessWidget {
  final VoidCallback onLongPress;

  const PressCardWidget({super.key, required this.onLongPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: onLongPress,
      child: const Card(
        elevation: 6,
        color: Colors.blueAccent,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 24),
          child: Text(
            'Press and hold me',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
