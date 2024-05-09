import 'package:flutter/material.dart';

class CircleClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // Define the circle radius
    final double radius = size.width / 2;

    // Create a path for the circle
    Path path = Path()
      ..addOval(Rect.fromCircle(
        center: Offset(size.width / 2, size.height / 2),
        radius: radius,
      ));

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}