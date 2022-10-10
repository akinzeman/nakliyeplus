// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:nakliyeplus/variables.dart';

class AracAraPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: colorSecondary,
        // decoration: BoxDecoration(

        // ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            Center(
                child: Text(
              "ARAÇ ARA",
              style: TextStyle(fontSize: 20),
            ))
          ],
        ),
      ),
    );
  }
}
