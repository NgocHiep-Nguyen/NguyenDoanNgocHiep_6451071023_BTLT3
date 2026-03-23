import 'package:bttl3/cau9/views/swip_view.dart';
import 'package:flutter/material.dart';

class Cau9App extends StatelessWidget{
  const Cau9App({super.key});

  @override 
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SwipeView(),   
    );
  }
}