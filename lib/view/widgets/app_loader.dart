import 'dart:math';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class AppLoader extends StatefulWidget {
  const AppLoader({super.key, required this.size});

  final double size;

  @override
  State<AppLoader> createState() => _AppLoaderState();
}

class _AppLoaderState extends State<AppLoader> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 1200))
      ..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.size,
      width: widget.size,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Transform.flip(
            flipX: true,
            child: Transform.rotate(
              angle: -(_controller.value * 2 * pi),
              child: CustomPaint(painter: _AppLoaderPainter()),
            ),
          );
        },
      ),
    );
  }
}

class _AppLoaderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double strokeWidth = size.width * 0.1;

    final Rect rect = Rect.fromCenter(
      center: Offset(size.width / 2, size.height / 2),
      width: size.width,
      height: size.height,
    );

    final Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round
      ..shader = ui.Gradient.linear(
        Offset(rect.left, rect.center.dy),
        Offset(rect.right, rect.center.dy),
        [Colors.transparent.withValues(alpha: 0.1), const Color(0xFF22D3EE)],
      );

    canvas.drawArc(rect.deflate(strokeWidth / 2), -pi / 2, pi * 1.5, false, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
