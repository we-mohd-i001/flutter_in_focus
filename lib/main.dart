import 'package:flutter/material.dart';
import 'package:flutter_in_focus/topics/custom_clipper/custom_clipper_page.dart';
import 'package:flutter_in_focus/topics/custom_clipper/view_states/my_custom_container.dart';
import 'package:flutter_in_focus/topics/custom_painter/custom_painter_page.dart';
import 'package:flutter_in_focus/topics/custom_painter/my_clock/custom_clock_page.dart';
import 'package:flutter_in_focus/topics/home/home_page.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true
      ),
      // home: HomePage(),
      routes: {
        '/' : (context) => const HomePage(),
        '/clipper': (context) => const CustomClipperPage(),
        '/painter' : (context) => const CustomPainterPage(),
        '/container' : (context) => const MyCustomContainer(),
        '/clock' : (context) => const CustomClockPageProvider(),
      },
    );
  }
}

