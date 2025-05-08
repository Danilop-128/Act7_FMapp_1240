import 'package:flutter/material.dart';

class PantallaCheckboxListTile extends StatefulWidget {
  const PantallaCheckboxListTile({Key? key}) : super(key: key);

  @override
  State<PantallaCheckboxListTile> createState() =>
      _PantallaCheckboxListTileState();
}

class _PantallaCheckboxListTileState extends State<PantallaCheckboxListTile> {
  bool? _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pantalla Checkbox list tile',
          style: const TextStyle(
            color: Colors.white, // Letra blanca
            fontSize: 25.0, // Tamaño de la letra 15
          ),
        ),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Center(
        child: CheckboxListTile(
          title: const Text('Checkbox List Tile'),
          value: _isChecked,
          onChanged: (bool? newValue) {
            setState(() {
              _isChecked = newValue;
            });
          },
          activeColor: Colors.orangeAccent,
          checkColor: Colors.white,
          tileColor: Colors.black12,
          subtitle: const Text('This is a subtitle'),
          controlAffinity: ListTileControlAffinity.leading,
          tristate: true,
        ),
      ),
    );
  }
}
