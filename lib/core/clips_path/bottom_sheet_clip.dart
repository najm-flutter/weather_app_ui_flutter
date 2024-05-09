import 'package:flutter/material.dart';

class BottomSheetClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 44);
    path.quadraticBezierTo(size.width, 0, size.width - 44, 0);
    path.lineTo(44, 0);
    path.quadraticBezierTo(0, 0, 0, 44);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
