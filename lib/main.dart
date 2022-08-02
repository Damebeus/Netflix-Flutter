import 'package:flutter/material.dart';
import 'package:practicas_flutter/paginas/inicio.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InicioPage(),
    );
  }
}
