import 'package:flutter/material.dart';

class PantallaCustomPaint extends StatelessWidget {
  const PantallaCustomPaint({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pantalla Custom Paint',
          style: const TextStyle(
            color: Colors.white, // Letra blanca
            fontSize: 25.0, // Tamaño de la letra 15
          ),
        ),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: CustomPaint(
            painter: DemoPainter(),
            child: const Text(
              'This is Pac-Man',
              style: TextStyle(
                color: Colors.black,
                backgroundColor: Colors.white54,
                fontSize: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DemoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var center = size / 2;
    var paint = Paint()..color = Colors.yellow;
    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(center.width, center.height),
        width: 250,
        height: 250,
      ),
      0.4,
      2 * 3.14 - 0.8,
      true,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
