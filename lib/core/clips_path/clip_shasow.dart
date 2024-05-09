
library flutter_clip_shadow;

import 'package:flutter/widgets.dart';

class _ClipShadowPainter extends CustomPainter {
  final CustomClipper<Path> clipper;
  final List<BoxShadow> boxShadows;
  final Color strokeColor; // لون الـ Stroke
  final double strokeWidth; // عرض الـ Stroke

  const _ClipShadowPainter({
    required this.clipper,
    required this.boxShadows,
    required this.strokeColor, // يجب تمرير لون الـ Stroke
    required this.strokeWidth, // يجب تمرير عرض الـ Stroke
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Path path = clipper.getClip(size);
    for (final shadow in boxShadows) {
      final clipPath = path.shift(
            Offset(
              shadow.offset.dx - shadow.spreadRadius,
              shadow.offset.dy - shadow.spreadRadius,
            ),
          );
      final paint = shadow.toPaint();
      canvas.drawPath(clipPath, paint);
    }

    // رسم الـ Stroke حول الـ Path
    final strokePaint = Paint()
      ..color = strokeColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;
    canvas.drawPath(path, strokePaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

class ClipShadow extends StatelessWidget {
  final List<BoxShadow> boxShadow;
  final CustomClipper<Path> clipper;
  final Widget child;
  final Color strokeColor; // لون الـ Stroke
  final double strokeWidth; // عرض الـ Stroke

  const ClipShadow({
    super.key,
    required this.boxShadow,
    required this.clipper,
    required this.child,
    required this.strokeColor, // يجب تمرير لون الـ Stroke
    required this.strokeWidth, // يجب تمرير عرض الـ Stroke
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _ClipShadowPainter(
        clipper: clipper,
        boxShadows: boxShadow,
        strokeColor: strokeColor, // تمرير لون الـ Stroke
        strokeWidth: strokeWidth, // تمرير عرض الـ Stroke
      ),
      child: ClipPath(
        clipper: clipper,
        child: child,
      ),
    );
  }
}
