import 'package:flutter/material.dart';

class Pagina2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic>? datos =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    String nombre = datos?['nombre'] ?? '';
    String apellido = datos?['apellido'] ?? '';

    return Scaffold(
      appBar: AppBar(title: Text('Ver datos')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Nombre: $nombre'),
            Text('Apellido: $apellido'),
          ],
        ),
      ),
    );
  }
}
