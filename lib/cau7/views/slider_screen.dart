import 'package:flutter/material.dart';
import '../widget/custom_slider.dart';

class SliderView extends StatelessWidget {
  const SliderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slider -\n MSSV: 6451071023"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: const Center(child: CustomSlider()),
    );
  }
}
