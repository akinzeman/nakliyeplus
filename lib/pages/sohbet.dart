// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SohbetPage extends StatelessWidget {
  const SohbetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          const Center(
              child: Text(
            "Sohbet hizmetinden sadece PREMIUM üyeler faydalanabilmektedir.",
            style: TextStyle(fontSize: 20),
          ))
        ],
      ),
    );
  }
}
