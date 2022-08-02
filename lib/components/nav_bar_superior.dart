// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class NavBarSuperior extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset(
                'assets/imgs/logo_netflix.png',
                width: 60.0,
              ),
              Text(
                'Programas',
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
              Text('Peliculas',
                  style: TextStyle(color: Colors.white, fontSize: 16.0)),
              Text('Mi lista',
                  style: TextStyle(color: Colors.white, fontSize: 16.0)),
            ]));
  }
}
