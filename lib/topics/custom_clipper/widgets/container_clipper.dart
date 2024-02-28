import 'package:flutter/material.dart';

class ContainerClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Path path = Path();
    var roundnessFactor = 40.0;

    path.moveTo(0, size.height * 0.3);

    path.lineTo(0, size.height - roundnessFactor);
    path.quadraticBezierTo(0, size.height, roundnessFactor, size.height);
    path.lineTo(size.width - roundnessFactor, size.height);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - roundnessFactor);
    path.lineTo(size.width, roundnessFactor*2);
    path.quadraticBezierTo(
        size.width, 0, size.width-roundnessFactor * 3, roundnessFactor*2);
    path.lineTo(roundnessFactor, size.height*0.33+10);
    path.quadraticBezierTo(
        0, size.height * 0.33+roundnessFactor, 0, size.height * 0.33+roundnessFactor*2);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}
