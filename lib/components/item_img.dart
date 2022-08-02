import 'package:flutter/material.dart';

class ItemImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
          'https://sm.ign.com/ign_es/tv/y/you/you_up9m.jpg',
          width: 100.0,
          fit: BoxFit.cover,
        ),
        SizedBox(
          width: 10.0,
        )
      ],
    );
  }
}
