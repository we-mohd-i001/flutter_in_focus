import 'package:flutter/material.dart';

class MyCustomPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Paint paint = Paint()..color = Colors.white.withOpacity(0.1);
    Path path = Path();

    //INFO : Triangle
    path.moveTo(0, 0);
    path.lineTo(size.width*0.2, 0);
    path.lineTo(0, size.height*0.4);
    path.close();

    canvas.drawPath(path, paint);

    //INFO: Rectangle
    Path path2 = Path();
    path2.moveTo(size.width*0.8, 0);
    path2.lineTo(size.width, 0);
    path2.lineTo(size.width, size.height);
    path2.lineTo(size.width*0.4, size.height);
    path2.close();

    canvas.drawPath(path2, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}