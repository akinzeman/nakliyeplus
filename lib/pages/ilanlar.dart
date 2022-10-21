// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:nakliyeplus/variables.dart';
import 'package:flutter/material.dart';

class IlanlarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: putPageBackground(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            Center(
                child: Text(
              "İlanlar Sayfası",
              style: TextStyle(fontSize: 20),
            ))
          ],
        ),
      ),
    );
  }
}
