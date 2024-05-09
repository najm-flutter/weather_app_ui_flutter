import 'package:flutter/material.dart';

class BgBottomBarClip extends CustomClipper<Path> {
  @override
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double xScaling = size.width / 390;
    final double yScaling = size.height / 89;
    path.lineTo(0 * xScaling,1 * yScaling);
    path.cubicTo(0 * xScaling,1 * yScaling,76.0769 * xScaling,16.9822 * yScaling,127 * xScaling,21 * yScaling,);
    path.cubicTo(153.339 * xScaling,23.0782 * yScaling,168.554 * xScaling,24 * yScaling,195 * xScaling,24 * yScaling,);
    path.cubicTo(221.446 * xScaling,24 * yScaling,235.661 * xScaling,23.0782 * yScaling,262 * xScaling,21 * yScaling,);
    path.cubicTo(312.923 * xScaling,16.9822 * yScaling,390 * xScaling,1 * yScaling,390 * xScaling,1 * yScaling,);
    path.cubicTo(390 * xScaling,1 * yScaling,390 * xScaling,89 * yScaling,390 * xScaling,89 * yScaling,);
    path.cubicTo(390 * xScaling,89 * yScaling,0 * xScaling,89 * yScaling,0 * xScaling,89 * yScaling,);
    path.cubicTo(0 * xScaling,89 * yScaling,0 * xScaling,1 * yScaling,0 * xScaling,1 * yScaling,);
    path.cubicTo(0 * xScaling,1 * yScaling,0 * xScaling,1 * yScaling,0 * xScaling,1 * yScaling,);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
   return false ;
  }
  
}