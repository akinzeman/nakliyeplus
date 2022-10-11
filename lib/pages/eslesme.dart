// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:nakliyeplus/variables.dart';

class EslesmePage extends StatelessWidget {
  const EslesmePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
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
          children: const <Widget>[
            Center(
                child: Text(
              "Eşleşme hizmetinden sadece PREMIUM üyeler faydalanabilmektedir.",
              style: TextStyle(fontSize: 20),
            ))
          ],
        ),
      ),
    );
  }
}
