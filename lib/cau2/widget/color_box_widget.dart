import 'package:flutter/material.dart';

class ColorBoxWidget extends StatefulWidget {
  const ColorBoxWidget({super.key});

  @override
  State<ColorBoxWidget> createState() => _ColorBoxWidgetState();
}

class _ColorBoxWidgetState extends State<ColorBoxWidget> {
  bool _isBlue = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        setState(() {
          _isBlue = !_isBlue;
        });
      },
      child: Container(
        width: 200,
        height: 200,
        color: _isBlue ? Colors.blue : Colors.red,
      ),
    );
  }
}
