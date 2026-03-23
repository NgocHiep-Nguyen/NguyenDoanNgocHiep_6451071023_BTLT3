
import 'package:bttl3/cau6/views/circle_screen.dart';
import 'package:flutter/material.dart';

class Cau6App extends StatelessWidget{
  const Cau6App({super.key});

  @override 
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DragCircleScreen(),
    );
  }
}