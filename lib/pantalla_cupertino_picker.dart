import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PantallaCupertinoPicker extends StatefulWidget {
  const PantallaCupertinoPicker({Key? key}) : super(key: key);

  @override
  State<PantallaCupertinoPicker> createState() =>
      _PantallaCupertinoPickerState();
}

class _PantallaCupertinoPickerState extends State<PantallaCupertinoPicker> {
  int _selectedValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pantalla Cupertino Picker',
          style: const TextStyle(
            color: Colors.white, // Letra blanca
            fontSize: 25.0, // Tamaño de la letra 15
          ),
        ),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: CupertinoButton.filled(
            child: Text('Value = $_selectedValue'),
            onPressed: () => showCupertinoModalPopup(
              context: context,
              builder: (_) => SizedBox(
                width: double.infinity,
                height: 250,
                child: CupertinoPicker(
                  backgroundColor: Colors.white,
                  itemExtent: 30,
                  scrollController: FixedExtentScrollController(
                    initialItem: 1,
                  ),
                  children: const [
                    Text('0'),
                    Text('1'),
                    Text('2'),
                  ],
                  onSelectedItemChanged: (int value) {
                    setState(() {
                      _selectedValue = value;
                    });
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
