import 'package:bttl3/cau7/models/slider_model.dart';
import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({super.key});

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  double _currentX = 0.0; // Vị trí hiện tại của nút tròn
  final double _maxWidth = 250.0; // Chiều dài tối đa của thanh slider
  final SliderData _data = SliderData(value: 0);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Hiển thị con số phần trăm
        Text(
          "Giá trị: ${_data.value.toInt()}%",
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 30),
        // Thanh Slider
        SizedBox(
          width: _maxWidth + 30, // Thêm khoảng trống cho nút tròn
          height: 50,
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              // 1. Thanh ngang màu xám (Back)
              Container(
                width: _maxWidth,
                height: 6,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
              // 2. Nút tròn có thể kéo
              Positioned(
                left: _currentX,
                child: GestureDetector(
                  onPanUpdate: (details) {
                    setState(() {
                      // Cập nhật vị trí X nhưng giới hạn từ 0 đến _maxWidth
                      _currentX += details.delta.dx;
                      if (_currentX < 0) _currentX = 0;
                      if (_currentX > _maxWidth) _currentX = _maxWidth;

                      // Tính toán phần trăm (Công thức: (x / tổng) * 100)
                      _data.value = (_currentX / _maxWidth) * 100;
                    });
                  },
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                      boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 4)],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}