// ignore_for_file: prefer_const_constructors, unnecessary_this

import 'package:flutter/material.dart';
import 'package:practicas_flutter/components/cartel_principal.dart';
import 'package:practicas_flutter/components/item_img.dart';
import 'package:practicas_flutter/components/item_redondo.dart';

// ignore: use_key_in_widget_constructors
class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          CartelPrincipal(),
          this.listaHorizontal('Recomendados', itemRedondo(), 9),
          SizedBox(
            height: 10.0,
          ),
          this.listaHorizontal('Series de suspenso', ItemImg(), 9),
          SizedBox(
            height: 10.0,
          ),
          this.listaHorizontal('Tendencias', ItemImg(), 9),
          SizedBox(
            height: 20.0,
          ),
          this.listaHorizontal('Mi lista', ItemImg(), 9),
        ],
      ),
      bottomNavigationBar: this.navInferior(),
    );
  }

  BottomNavigationBar navInferior() {
    // ignore: prefer_const_literals_to_create_immutables
    return BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        type: BottomNavigationBarType.fixed,
        // ignore: prefer_const_literals_to_create_immutables
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Buscar"),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_library_outlined), label: "Proximamente"),
          BottomNavigationBarItem(
              icon: Icon(Icons.arrow_downward), label: "Descargas"),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "Mas"),
        ]);
  }

  Widget listaHorizontal(String titulo, Widget item, int cantidad) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // ignore: prefer_const_constructors
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 10.0),
          child: Text(
            titulo,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          ),
        ),
        Container(
          height: 120.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: cantidad,
            itemBuilder: (context, index) {
              return item;
            },
          ),
        ),
      ],
    );
  }
}
