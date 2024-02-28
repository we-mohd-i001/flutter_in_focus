import 'package:flutter/material.dart';





class MyCustomClipper extends CustomClipper<Path>{
  @override
  getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width*0.2, size.height*0.95, size.width*0.4 , size.height*0.82);
    path.quadraticBezierTo(size.width*0.7, size.height*0.6, size.width, size.height*0.95);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }

}
