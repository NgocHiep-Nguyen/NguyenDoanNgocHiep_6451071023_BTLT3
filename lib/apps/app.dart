import 'package:bttl3/cau6/views/circle_screen.dart';
import 'package:flutter/material.dart';
import 'package:bttl3/views/home_page.dart';
import 'package:bttl3/cau1/views/tap_box.dart';
import 'package:bttl3/cau2/views/double_tap_screen.dart';
import 'package:bttl3/cau3/views/long_press_screen.dart';
import 'package:bttl3/cau4/views/tap_counter_screen.dart';
import 'package:bttl3/cau5/views/pointer_screen.dart';
import 'package:bttl3/cau7/views/slider_screen.dart';
import 'package:bttl3/cau8/views/grid_view_page.dart';
import 'package:bttl3/cau9/views/swip_view.dart';
import 'package:bttl3/cau10/views/delete_list_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BTTL3',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const HomePage(),
      routes: {
        '/cau1': (context) => const TapBox(),
        '/cau2': (context) => const DoubleTapScreen(),
        '/cau3': (context) => const LongPressScreen(),
        '/cau4': (context) => const TapCounterScreen(),
        '/cau5': (context) => const PointerScreen(),
        '/cau6': (context) => const DragCircleScreen(),
        '/cau7': (context) => const SliderView(),
        '/cau8': (context) => const GridViewPage(),
        '/cau9': (context) => const SwipeView(),
        '/cau10': (context) => const DeleteListView(),
      },
    );
  }
}
