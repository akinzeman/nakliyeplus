// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:animations/animations.dart';
import 'package:nakliyeplus/variables.dart';
import 'package:flutter/material.dart';

import 'arac_gir.dart';

class AraclarimPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("ARAÇLARIM"),
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
              "Eklenmiş bir aracınız bulunmamaktadır.",
              style: TextStyle(fontSize: 18),
            ))
          ],
        ),
      ),

      /* OpenContainer en doğrusu burada */
      floatingActionButton: OpenContainer(
        closedColor:
            colorSecondary, //tip: fab backgroundColor'ın rengi neyse onu ver
        // openColor: Colors.blue,
        closedShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        closedElevation: 6,
        openElevation: 0,
        transitionDuration: Duration(milliseconds: 500),
        closedBuilder: (context, _) {
          return FloatingActionButton.extended(
            // heroTag: 'fab1',
            backgroundColor: colorSecondary,
            elevation: 0,
            label: Row(
              children: const [Icon(Icons.add), Text('ARAÇ GİR')],
            ),
            onPressed: null, //openBuilder'e bulb olması için null yap!!
          );
        },
        openBuilder: (context, _) => AracGirPage(),
        // openBuilder: (BuildContext c, VoidCallback action) => YukGirPage(),
      ),
    );
  }
}
