import 'package:flutter/material.dart';

class BgButtonAddClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double xScaling = size.width / 258;
    final double yScaling = size.height / 100;
    path.moveTo(108 * xScaling, 0 * yScaling);
    path.cubicTo(
      108 * xScaling,
      0 * yScaling,
      150 * xScaling,
      0 * yScaling,
      150 * xScaling,
      0 * yScaling,
    );
    path.cubicTo(
      182 * xScaling,
      0 * yScaling,
      191.5 * xScaling,
      24.14 * yScaling,
      201.732 * xScaling,
      48.7 * yScaling,
    );
    path.cubicTo(
      212.325 * xScaling,
      74.125 * yScaling,
      223 * xScaling,
      100 * yScaling,
      258 * xScaling,
      100 * yScaling,
    );
    path.cubicTo(
      258 * xScaling,
      100 * yScaling,
      0 * xScaling,
      100 * yScaling,
      0 * xScaling,
      100 * yScaling,
    );
    path.cubicTo(
      35 * xScaling,
      100 * yScaling,
      45.675 * xScaling,
      74.125 * yScaling,
      56.268 * xScaling,
      48.7 * yScaling,
    );
    path.cubicTo(
      66.5 * xScaling,
      24.14 * yScaling,
      76 * xScaling,
      0 * yScaling,
      108 * xScaling,
      0 * yScaling,
    );
    path.cubicTo(
      108 * xScaling,
      0 * yScaling,
      108 * xScaling,
      0 * yScaling,
      108 * xScaling,
      0 * yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}