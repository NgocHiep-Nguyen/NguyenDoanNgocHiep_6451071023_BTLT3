import 'package:bttl3/cau8/views/grid_view_page.dart';
import 'package:flutter/material.dart';

class Cau8App extends StatelessWidget{
  const Cau8App({super.key});

  @override 
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GridViewPage(),   
    );
  }
}