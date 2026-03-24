import 'package:bttl3/cau10/models/items.dart';
import 'package:bttl3/cau10/utils/item_constants.dart';
import 'package:flutter/material.dart';

class SwipeToDeleteList extends StatefulWidget {
  const SwipeToDeleteList({super.key});

  @override
  State<SwipeToDeleteList> createState() => _SwipeToDeleteListState();
}

class _SwipeToDeleteListState extends State<SwipeToDeleteList> {
  final List<Items> _items = List.from(ItemConstants.initialItems);

  @override
  Widget build(BuildContext context) {
    if (_items.isEmpty) {
      return const Center(child: Text("Danh sách trống"));
    }

    return ListView.builder(
      itemCount: _items.length,
      itemBuilder: (context, index) {
        final item = _items[index];

        return Dismissible(
          key: Key(item.id),

          direction: DismissDirection.endToStart,

          background: Container(
            color: Colors.red,
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const Icon(Icons.delete, color: Colors.white),
          ),

          // Hàm chạy khi đã kéo xong
          onDismissed: (direction) {
            setState(() {
              _items.removeAt(index);
            });

            // Hiện thông báo nhỏ dưới màn hình
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text("Đã xoá ${item.title}")));
          },

          child: Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ListTile(
              leading: const CircleAvatar(child: Icon(Icons.list)),
              title: Text(item.title),
              subtitle: const Text("Kéo sang trái để xoá"),
            ),
          ),
        );
      },
    );
  }
}
