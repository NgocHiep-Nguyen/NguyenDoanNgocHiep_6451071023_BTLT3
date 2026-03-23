import 'package:flutter/material.dart';

class TapCounterWidget extends StatefulWidget {
  const TapCounterWidget({super.key});

  @override
  State<TapCounterWidget> createState() => _TapCounterWidgetState();
}

class _TapCounterWidgetState extends State<TapCounterWidget> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Tap count: $_count',
          style: const TextStyle(fontSize: 24),
        ),
        const SizedBox(height: 24),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _count++;
            });
          },
          child: const Text('Tap Here'),
        ),
      ],
    );
  }
}
