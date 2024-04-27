
import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: null,
        ),
        body: Center(
          child: CustomPaint(
            size: Size(300, 400),
            painter: MyPainter(),
          ),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    // Rectángulo azul
    paint.color = Colors.blue;
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height * 0.1), paint);

    // carnet dentro del rectangulo
    TextSpan span = TextSpan(
      style: TextStyle(color: Colors.white, fontSize: 20),
      text: '1390-20-19274',
    );
    TextPainter tp = TextPainter(
      text: span,
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );
    tp.layout();
    tp.paint(canvas, Offset((size.width - tp.width) / 2, size.height * 0.05 - tp.height / 2));

    // Cuadrado azul
    paint.color = Colors.blue;
    canvas.drawRect(Rect.fromLTWH((size.width - 50) / 2, size.height * 0.4, 50, 50), paint);

    // Línea roja
    paint.color = Colors.red;
    paint.strokeWidth = 5;
    double lineY = size.height * 0.55; // Posición vertical de la línea
    double lineStartX = size.width * 0.25; // Posición de inicio de la línea
    double lineEndX = size.width * 0.75; // Posición de fin de la línea
    canvas.drawLine(Offset(lineStartX, lineY), Offset(lineEndX, lineY), paint);
    // Círculo amarillo con relleno
    paint.color = Colors.yellow;
    canvas.drawCircle(Offset(size.width / 2, size.height * 0.7), 30, paint);

    // Círculo amarillo sin relleno
    paint.color = Colors.yellow;
    paint.style = PaintingStyle.stroke;
    canvas.drawCircle(Offset(size.width / 2, size.height * 0.85), 30, paint);

    // Cuadrado azul con mi nombre
    double squareSize = size.width * 0.2; // ajustar el tamaño del cuadrado
    double squareTop = size.height * 0.96; // determinar la posicion vertical

    Rect squareRect = Rect.fromLTWH(size.width * 0.40, squareTop, squareSize, squareSize);
    paint.color = Colors.blue;
    paint.style = PaintingStyle.fill;
    canvas.drawRect(squareRect, paint);

    span = TextSpan(
      style: TextStyle(color: Colors.black, fontSize: 18),
      text: 'Jerson',
    );
    tp = TextPainter(
      text: span,
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );
    tp.layout();
    tp.paint(canvas, Offset((size.width - tp.width) / 2, size.height * 1.03 - tp.height / 2));

    // Línea amarilla
    paint.color = Colors.yellow;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 5;


    Rect ovalRect = Rect.fromLTWH(size.width * 0.15, size.height * 0.75, size.width * 0.7, size.height * 0.4);

    canvas.drawArc(
      ovalRect,
      0,
      pi,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
} 