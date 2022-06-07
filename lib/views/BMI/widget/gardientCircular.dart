import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GradientCircularProgressIndicator extends StatelessWidget {
  final double radius;
  final List<Color> gradientColors;
  final double strokeWidth;
  final double value;

  const GradientCircularProgressIndicator({
    required this.radius,
    required this.gradientColors,
    required this.value,
    this.strokeWidth = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size.fromRadius(radius),
      painter: GradientCircularProgressPainter(
          radius: radius,
          gradientColors: gradientColors,
          strokeWidth: strokeWidth,
          value: value),
    );
  }
}

class GradientCircularProgressPainter extends CustomPainter {
  GradientCircularProgressPainter(
      {required this.gradientColors,
      required this.strokeWidth,
      required this.radius,
      required this.value});
  final double value;
  final double pi = 3.1415926535897932;
  final double radius;
  final List<Color> gradientColors;
  final double strokeWidth;

  @override
  void paint(Canvas canvas, Size size) {
    size = Size.fromRadius(radius);
    double offset = strokeWidth / 2;
    Rect rect = Offset(offset, offset) &
        Size(size.width - strokeWidth, size.height - strokeWidth);
    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;
    paint.shader =
        SweepGradient(colors: gradientColors, startAngle: 0.0, endAngle: 2 * pi)
            .createShader(rect);

    var paint2 = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth + 1
      ..strokeCap = StrokeCap.round;

    paint2.shader = SweepGradient(colors: const [
      Color.fromARGB(255, 26, 29, 45),
      Color.fromARGB(255, 26, 29, 45)
    ], startAngle: 0.0, endAngle: 2 * pi)
        .createShader(rect);

    var paint3 = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth + 8
      ..strokeCap = StrokeCap.round;

    paint3.shader = const SweepGradient(colors: [
      Color.fromARGB(255, 27, 221, 235),
      Color.fromARGB(255, 27, 221, 235),
    ]).createShader(rect);

    canvas.drawArc(rect, 0.0, 2 * pi, false, paint2);
    canvas.drawArc(rect, 0.5 * pi, value * pi, false, paint);
    canvas.drawArc(rect, 0.5 * pi + value * pi, pi / 180, false, paint3);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
