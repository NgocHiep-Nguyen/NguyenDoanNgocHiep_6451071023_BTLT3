import 'package:flutter/material.dart';

class PointerWidget extends StatefulWidget {
  const PointerWidget({super.key});

  @override
  State<PointerWidget> createState() => _PointerWidgetState();
}

class _PointerWidgetState extends State<PointerWidget> {
  double _x = 0;
  double _y = 0;
  bool _touched = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Listener(
          onPointerDown: (event) {
            setState(() {
              _x = event.position.dx;
              _y = event.position.dy;
              _touched = true;
            });
          },
          onPointerMove: (event) {
            setState(() {
              _x = event.position.dx;
              _y = event.position.dy;
            });
          },
          child: Container(
            width: 300,
            height: 300,
            color: Colors.teal.shade100,
            alignment: Alignment.center,
            child: const Text(
              'Touch here',
              style: TextStyle(fontSize: 18, color: Colors.teal),
            ),
          ),
        ),
        const SizedBox(height: 24),
        if (_touched)
          Text(
            'x: ${_x.toStringAsFixed(1)}, y: ${_y.toStringAsFixed(1)}',
            style: const TextStyle(fontSize: 20),
          ),
      ],
    );
  }
}
