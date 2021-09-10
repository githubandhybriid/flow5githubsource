import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:ui';

class dwidget extends StatefulWidget {
  @override
  _dwidgetState createState() => _dwidgetState();
}

class _dwidgetState extends State<dwidget> {
  List<Offset> points = <Offset>[];
  @override
  Widget build(BuildContext context) {
    final Container sketchArea = Container(
      margin: EdgeInsets.all(1.0),
      alignment: Alignment.topLeft,
      color: Colors.blueGrey[50],
      child: CustomPaint(
        painter: Sketcher(points),
      ),
    );
    return Container(
      child: CustomPaint(
        painter: Sketcher(points),
      ),
    );
  }
}

class Sketcher extends CustomPainter {
  final List<Offset> points;

  Sketcher(this.points);



  @override
  bool shouldRepaint(Sketcher oldDelegate) {
    return oldDelegate.points != points;
  }

  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.black
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 4.0;

    for (int i = 0; i < points.length - 1; i++) {
      if (points[i] != null && points[i + 1] != null) {
        canvas.drawLine(points[i], points[i + 1], paint);
      }
    }
  }
}
