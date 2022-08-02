// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:practicas_flutter/components/nav_bar_superior.dart';

class CartelPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: <Widget>[
        this.cabecera(),
        this.infoSerie(),
        this.botonera(),
      ],
    );
  }

  Widget cabecera() {
    return Stack(
      children: <Widget>[
        Image.asset('assets/imgs/cartel.jpg', height: 350.0, fit: BoxFit.cover),
        Container(
          width: double.infinity,
          height: 350.0,
          decoration: BoxDecoration(
              gradient:
                  // ignore: prefer_const_literals_to_create_immutables
                  LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.bottomCenter,
                      // ignore: prefer_const_literals_to_create_immutables
                      colors: <Color>[
                Colors.black38,
                Colors.black,
              ])),
        ),
        SafeArea(
          child: NavBarSuperior(),
        ),
      ],
    );
  }

  Widget infoSerie() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      // ignore: prefer_const_literals_to_create_immutables
      children: <Widget>[
        Text(
          'Ciencia Ficcion',
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
        SizedBox(
          width: 6.0,
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5.0,
        ),
        SizedBox(
          width: 6.0,
        ),
        Text(
          'Suspenso insostenible',
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
        SizedBox(
          width: 6.0,
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5.0,
        ),
        SizedBox(
          width: 6.0,
        ),
        Text(
          'Adolescente',
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
        SizedBox(
          width: 6.0,
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5.0,
        ),
        SizedBox(
          width: 6.0,
        ),
        Text(
          'Accion',
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
      ],
    );
  }

  Widget botonera() {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Icon(Icons.check, color: Colors.white),
                SizedBox(
                  height: 3.0,
                ),
                Text(
                  'Mi lista',
                  style: TextStyle(color: Colors.white, fontSize: 10.0),
                )
              ],
            ),
            FlatButton.icon(
              onPressed: () {},
              color: Colors.white,
              icon: Icon(
                Icons.play_arrow,
                color: Colors.black,
              ),
              label: Text('Reproducir'),
            ),
            Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Icon(Icons.info, color: Colors.white),
                Text(
                  'Info',
                  style: TextStyle(color: Colors.white, fontSize: 10.0),
                )
              ],
            ),
          ],
        ));
  }
}
