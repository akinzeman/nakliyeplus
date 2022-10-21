// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:nakliyeplus/variables.dart';
import 'package:flutter/material.dart';

class AracGirPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("ARAÇ GİR"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 30.0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: const [colorSecondary, colorSecondaryLight],
              // colors: [colorSecondary, colorSecondaryLight],
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: const Radius.circular(30.0),
              bottomRight: const Radius.circular(30.0),
            ),
          ),
        ),
      ),
      body: Container(
        decoration: putPageBackground(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            Center(
                child: Text(
              "ARAÇ GİR",
              style: TextStyle(fontSize: 20),
            ))
          ],
        ),
      ),
    );
  }
}
