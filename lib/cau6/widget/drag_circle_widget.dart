import 'package:bttl3/cau6/models/drag_circle_model.dart';
import 'package:flutter/material.dart';

class DragCircleWidget extends StatefulWidget {
  const DragCircleWidget({super.key});
  @override
  State<DragCircleWidget> createState() => _DragCircleWidget();
}

class _DragCircleWidget extends State<DragCircleWidget> {
  final DragCircleModel _position = DragCircleModel(x: 100, y: 100);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: _position.x,
          top: _position.y,
          child: GestureDetector(
            onPanUpdate: (details) {
              setState(() {
                _position.x += details.delta.dx;
                _position.y += details.delta.dy;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.orange,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              width: 80,
              height: 80,
            ),
          ),
        ),
      ],
    );
  }
}
