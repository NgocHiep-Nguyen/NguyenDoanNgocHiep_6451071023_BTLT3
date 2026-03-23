import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const List<Map<String, String>> _items = [
    {'title': 'Bài 1: Tap cơ bản', 'route': '/cau1'},
    {'title': 'Bài 2: Double Tap đổi màu', 'route': '/cau2'},
    {'title': 'Bài 3: Long Press hiển thị thông báo', 'route': '/cau3'},
    {'title': 'Bài 4: Đếm số lần Tap', 'route': '/cau4'},
    {'title': 'Bài 5: Pointer Events cơ bản', 'route': '/cau5'},
    {'title': 'Bài 6: Kéo thả Circle', 'route': '/cau6'},
    {'title': 'Bài 7: Custom Slider', 'route': '/cau7'},
    {'title': 'Bài 8: Grid Layout', 'route': '/cau8'},
    {'title': 'Bài 9: Swipe View', 'route': '/cau9'},
    {'title': 'Bài 10: Swipe to Delete List', 'route': '/cau10'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Danh sách bài tập', style: TextStyle(fontSize: 18)),
        centerTitle: true,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: _items.length,
        separatorBuilder: (_, __) => const Divider(),
        itemBuilder: (context, index) {
          final item = _items[index];
          return ListTile(
            title: Text(item['title']!),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () => Navigator.pushNamed(context, item['route']!),
          );
        },
      ),
    );
  }
}
