// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:nakliyeplus/variables.dart';

class YukAraPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("YÜK ARA"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 30.0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: const [colorPrimary, colorPrimaryLight],
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
        // color: Colors.white10, // colorSecondary,
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
              "YÜK ARA",
              style: TextStyle(fontSize: 20),
            ))
          ],
        ),
      ),
    );
  }
}
