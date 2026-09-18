import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:math';

import '../constants/app_colors.dart';

class AuroraGradientScreen extends StatefulWidget {
  @override
  _AuroraGradientScreenState createState() => _AuroraGradientScreenState();
}

class _AuroraGradientScreenState extends State<AuroraGradientScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 6), 
    )..repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Stack(
          children: [
            Positioned.fill(
              child: AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return CustomPaint(
                    painter: AuroraGradientPainter(_controller.value),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class AuroraGradientPainter extends CustomPainter {
  final double animationValue;
  AuroraGradientPainter(this.animationValue);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..shader = LinearGradient(
        colors: [
          Colors.green.withOpacity(0.5), 
          Colors.black
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    Path path = Path();
    double waveHeight = 100 + (40 * sin(animationValue * pi * 2)); 

    double baseHeight = size.height * 0.6; 
    path.moveTo(0, baseHeight);

    for (double i = 0; i <= size.width; i += size.width / 15) {
      path.lineTo(
        i,
        baseHeight - 
            (sin((i / size.width * 2 * pi) + (animationValue * 2 * pi)).abs() *
                waveHeight),
      );
    }

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(AuroraGradientPainter oldDelegate) {
    return oldDelegate.animationValue != animationValue;
  }
}
