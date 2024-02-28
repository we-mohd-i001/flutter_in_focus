import 'dart:math';

import 'package:flutter/material.dart';

class CustomClock extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var centerX = size.width / 2;
    var centerY = size.height / 2;
    var center = Offset(centerX, centerY);
    var radius = min(centerX, centerY);

    Paint fillBrush = Paint()..color = const Color(0xFF444974);

    Paint outlineBrush = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 16;

    Paint centerFillBrush = Paint()..color = Colors.white;

    Paint secHandBrush = Paint()
      ..color = Colors.orange.shade300
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 8;

    Paint minHandBrush = Paint()
      ..color = Colors.white
      ..shader = const RadialGradient(colors: [Colors.deepPurple, Colors.lightBlueAccent])
          .createShader(Rect.fromCircle(center: center, radius: radius))
      ..style =PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
    ..strokeWidth = 12
    ;
    Paint hourHandBrush = Paint()..color = Colors.white
      ..shader = const RadialGradient(colors: [Colors.pink, Colors.lightBlueAccent])
          .createShader(Rect.fromCircle(center: center, radius: radius))
      ..style =PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 16;

    canvas.drawCircle(center, radius - 40, fillBrush);
    canvas.drawCircle(center, radius - 40, outlineBrush);
    canvas.drawLine(center, const Offset(160, 500), hourHandBrush);
    canvas.drawLine(center, const Offset(180, 360), minHandBrush);
    canvas.drawLine(center, const Offset(100, 380), secHandBrush);

    canvas.drawCircle(center, 16, centerFillBrush);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
