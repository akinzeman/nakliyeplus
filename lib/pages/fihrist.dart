// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:nakliyeplus/variables.dart';
import 'package:flutter/material.dart';

class FihristPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Colors.white10, // colorSecondary,

        //sor: bunu nasıl fonksiyon/widget yaparız

        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter, // .topRight,
            end: Alignment.bottomCenter, //.bottomLeft,
            colors: colorPageBgr,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            Center(
                child: Text(
              "Fihrist Sayfası",
              style: TextStyle(fontSize: 20),
            ))
          ],
        ),
      ),
    );
  }
}
