// ignore_for_file: file_names

import 'package:flutter/material.dart';

class EslesmePage extends StatelessWidget {
  const EslesmePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Center(
              child: Text(
            "Eşleşme hizmetinden sadece PREMIUM üyeler faydalanabilmektedir.",
            style: TextStyle(fontSize: 20),
          ))
        ],
      ),
    );
  }
}
