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
        // width: double.infinity,
        width: MediaQuery.of(context).size.width,
        decoration: putPageBackground(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            Text(
              "Araçlarınızın pozisyonu\n(Ne zaman ve nerede boş olduğunu)\nsürekli güncel tutunuz.",
              style: TextStyle(fontSize: 18),
            ),
            // SizedBox(height: 50),
            // ElevatedButton(
            //   onPressed: () {},
            //   style: ElevatedButton.styleFrom(
            //     //full width button
            //     // minimumSize: const Size.fromHeight(50),
            //     fixedSize: const Size.fromHeight(50),
            //     maximumSize: Size(340, 100),

            //     padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 15.0),
            //     backgroundColor: colorSecondary,
            //     // shape: RoundedRectangleBorder(
            //     //     borderRadius: BorderRadius.circular(50.0)),
            //     shape: StadiumBorder(),
            //   ),
            //   child: Text(
            //     "KAYDET",
            //     style: TextStyle(color: Colors.white, fontSize: 18),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
