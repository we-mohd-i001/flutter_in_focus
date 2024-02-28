import 'package:flutter/material.dart';
import 'package:flutter_in_focus/topics/custom_clipper/my_custom_clipper.dart';
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
    return Scaffold(
      appBar: AppBar(title: const Text('Custom Clipper'),),
      body: Container(
        height: size.height,
        //color: Colors.lightBlueAccent,
        child: Stack(
          children: [
            Container(
              child: ClipPath(
                clipper: MyCustomClipper(),
                child: Container(
                  height: 180,
                  color: Colors.deepOrange,
                ),
              ),
            ),
            Opacity(
              opacity: 0.5,
              child: ClipPath(
                  clipper: MyCustomClipper(),
                  child: Container(
                height: 200,
                color: Colors.deepOrange,
              )),
            ),
          ],
        ),
      ),
    );
  }
}
