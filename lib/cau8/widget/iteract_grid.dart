
import 'package:bttl3/cau8/models/grid_item.dart';
import 'package:flutter/material.dart';

class InteractGrid extends StatefulWidget  {
  const InteractGrid({super.key});

  @override 
  State<InteractGrid> createState() => _InteractGrid();
}

class _InteractGrid extends  State<InteractGrid>{
  final List<GridItem> _items = List.generate(9, (index) => GridItem(color: Colors.grey[300]!));

  void _toggleColor(int index){
    setState((){
      if(_items[index].color == Colors.grey[300]) 
        _items[index].color = Colors.blue;
      else  _items[index].color = Colors.grey[300]!;
    });
  }
  @override 
  Widget build(BuildContext context){
    return GridView.builder(
      padding: const EdgeInsets.all(20),
      //Cấu hình 3 cột
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: 9,
      itemBuilder: (contetn, index){
        return GestureDetector(
          onTap: () => _toggleColor(index),
          child: Container(
            decoration: BoxDecoration(
              color: _items[index].color,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text("Ô ${index + 1}"),  
            )
          )
        );
      },
    );
  }
}