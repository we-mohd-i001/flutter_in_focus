import 'package:flutter/material.dart';

class WindowPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.brown;
    Path path = Path();
    Path path1 = Path();
    Path path2 = Path();
    Path path3 = Path();
    Path path4 = Path();
    Path path5 = Path();

    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height*0.05);
    path.lineTo(0, size.height*0.05);

    path.close();

    canvas.drawPath(path, paint);

    path1.moveTo(0, size.height*0.95);
    path1.lineTo(size.width, size.height*0.95);
    path1.lineTo(size.width, size.height);
    path1.lineTo(0, size.height);

    path1.close();

    canvas.drawPath(path1, paint);

    path2.moveTo(0, size.height*0.475);
    path2.lineTo(size.width, size.height*0.475);
    path2.lineTo(size.width, size.height*0.525);
    path2.lineTo(0, size.height*0.525);

    path2.close();

    canvas.drawPath(path2, paint);

    path3.moveTo(size.width*0.475, 0);
    path3.lineTo(size.width*0.525, 0);
    path3.lineTo(size.width*0.525, size.height);
    path3.lineTo(size.width*0.475, size.height);

    path3.close();

    canvas.drawPath(path3, paint);

    path4.moveTo(0, 0);
    path4.lineTo(size.width*0.05, 0);
    path4.lineTo(size.width*0.05, size.height);
    path4.lineTo(size.width*0, size.height);

    path4.close();

    canvas.drawPath(path4, paint);

    path5.moveTo(size.width*0.95, 0);
    path5.lineTo(size.width, 0);
    path5.lineTo(size.width, size.height);
    path5.lineTo(size.width*0.95, size.height);

    path5.close();

    canvas.drawPath(path5, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}