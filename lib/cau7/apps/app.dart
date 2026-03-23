import 'package:bttl3/cau7/views/slider_screen.dart';
import 'package:flutter/material.dart';

class Cau7App extends StatelessWidget {
	const Cau7App({super.key});

	@override
	Widget build(BuildContext context) {
		return const MaterialApp(
			debugShowCheckedModeBanner: false,
			home: SliderView(),
		);
	}
}
