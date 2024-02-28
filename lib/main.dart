import 'package:flutter/material.dart';
import 'package:flutter_in_focus/topics/custom_painter/my_custom_painter.dart';
import 'package:flutter_in_focus/topics/custom_painter/window_painter.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      home: MainApp(),
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.lightBlueAccent,
      child: CustomPaint(
        painter: MyCustomPainter(),
        child: Center(
          child: SizedBox(
            height: 300,
            width:  380,
            child: CustomPaint(
              painter: WindowPainter(),
            ),
          ),
        ),
      ),
    );
  }
}

