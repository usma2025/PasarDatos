import 'package:flutter/material.dart';

import 'Pagina2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Aplicación Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        '/pagina2': (context) => Pagina2(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nombreController = TextEditingController();
  TextEditingController _apellidoController = TextEditingController();

  void _navegarAPagina2() {
    String nombre = _nombreController.text;
    String apellido = _apellidoController.text;
    Navigator.pushNamed(
      context,
      '/pagina2',
      arguments: {'nombre': nombre, 'apellido': apellido},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _nombreController,
              decoration: InputDecoration(labelText: 'Nombre'),
            ),
            TextField(
              controller: _apellidoController,
              decoration: InputDecoration(labelText: 'Apellido'),
            ),
            ElevatedButton(
              onPressed: _navegarAPagina2,
              child: Text('Iniciar'),
            ),
          ],
        ),
      ),
    );
  }
}

