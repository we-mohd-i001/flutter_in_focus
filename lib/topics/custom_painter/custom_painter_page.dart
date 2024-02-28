import 'package:flutter/material.dart';
import 'package:flutter_in_focus/topics/custom_painter/view_states/my_custom_painter.dart';
import 'package:flutter_in_focus/topics/custom_painter/view_states/window_painter.dart';

class CustomPainterPage extends StatelessWidget {
  const CustomPainterPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.lightBlueAccent,
      title: const Text('Custom Painter'),
    ),
    body: SafeArea(
      child:
      Container(
      color: Colors.lightBlue,
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
    ),
    ),
    );
  }
}
