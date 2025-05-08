import 'package:flutter/material.dart';

class PantallaColumn extends StatelessWidget {
  const PantallaColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pantalla Column',
          style: const TextStyle(
            color: Colors.white, // Letra blanca
            fontSize: 25.0, // Tamaño de la letra 15
          ),
        ),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: const <Widget>[
          Text('Row 1'),
          Text('Row 2'),
          Text('Row 3'),
          Text('Row 4'),
          Text('Row 5'),
          Text('Flutter Mapp'),
        ],
      ),
    );
  }
}
