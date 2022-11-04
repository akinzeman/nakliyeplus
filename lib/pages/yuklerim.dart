// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_print

// import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:nakliyeplus/variables.dart';

class YuklerimPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("YÜKLERİM"),
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
      // body: Hero(
      //   tag: "yukgir",
      //   child: Container(
      body: Container(
        width: MediaQuery.of(context).size.width,
        // color: Colors.red,
        decoration: putPageBackground(),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            SizedBox(height: 100),
            Text(
              "Bir yükünüz bulunmamaktadır.",
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
      ),
      // ),

      floatingActionButton: FloatingActionButton.extended(
        heroTag: 'fab1',
        backgroundColor: colorPrimary,
        label: Row(
          children: const [Icon(Icons.add), Text('Yük Gir')],
        ),
        onPressed: () {},
      ),
    );
  }
}
