import 'package:flutter/material.dart';
import 'package:flutter_in_focus/topics/custom_clipper/view_states/my_custom_clipper.dart';

class CustomClipperPage extends StatelessWidget {
  const CustomClipperPage({super.key});

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
    );;
  }
}
