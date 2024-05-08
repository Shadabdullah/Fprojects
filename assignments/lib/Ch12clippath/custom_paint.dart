import 'package:flutter/material.dart';

class CustomPaintPractice extends StatelessWidget {
  const CustomPaintPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.green[200],
          title: const Text(
            "CUSTOM CLIP PATH",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
            child: Container(
          width: double.infinity,
          height: 200,
          child: CustomPaint(
            painter: RPSCustomPainter(),
          ),
        )));
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = Colors.pink
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.2487500, size.height * 0.0800000);
    path_0.quadraticBezierTo(size.width * 0.4284375, size.height * 0.5020833,
        size.width * 0.2500000, size.height * 0.5850000);
    path_0.quadraticBezierTo(size.width * 0.4320375, size.height * 0.5054167,
        size.width * 0.4331250, size.height * 0.8416667);
    path_0.cubicTo(
        size.width * 0.4295375,
        size.height * 0.5058333,
        size.width * 0.5798625,
        size.height * 0.5283333,
        size.width * 0.7775250,
        size.height * 0.6016667);
    path_0.cubicTo(
        size.width * 0.5806500,
        size.height * 0.5308333,
        size.width * 0.4309625,
        size.height * 0.5075000,
        size.width * 0.6275250,
        size.height * 0.0833333);
    path_0.cubicTo(
        size.width * 0.5569000,
        size.height * 0.2375000,
        size.width * 0.4328250,
        size.height * 0.5058333,
        size.width * 0.2487500,
        size.height * 0.0800000);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_stroke_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
