import 'package:bttl3/cau10/widget/swipe_to_delete_list.dart';
import 'package:flutter/material.dart';

class DeleteListView extends StatelessWidget {
  const DeleteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Swipe to Delete List \n MSSV: 6451071023"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: const SwipeToDeleteList(),
    );
  }
}
