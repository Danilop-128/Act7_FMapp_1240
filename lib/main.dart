import 'package:flutter/material.dart';
import 'package:lopezact7/pantalla_inicio.dart';
import 'package:lopezact7/pantalla_animated_list.dart';
import 'package:lopezact7/pantalla_autocomplete.dart';
import 'package:lopezact7/pantalla_checkbox_list_tile.dart';
import 'package:lopezact7/pantalla_column.dart';
import 'package:lopezact7/pantalla_cupertino_picker.dart';
import 'package:lopezact7/pantalla_custom_paint.dart';

void main() => runApp(MiFMapp());

class MiFMapp extends StatefulWidget {
  const MiFMapp({Key? key}) : super(key: key);

  @override
  State<MiFMapp> createState() => _MiFMappState();
}

class _MiFMappState extends State<MiFMapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Entre Paginas Routes',
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaInicio(),
        '/pantalla2': (context) => const PantallaAnimatedList(),
        '/pantalla3': (context) => const PantallaAutoComplete(),
        '/pantalla4': (context) => const PantallaCheckboxListTile(),
        '/pantalla5': (context) => const PantallaColumn(),
        '/pantalla6': (context) => const PantallaCupertinoPicker(),
        '/pantalla7': (context) => const PantallaCustomPaint(),
      },
    );
  }
}
