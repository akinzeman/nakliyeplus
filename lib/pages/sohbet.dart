// ignore_for_file: file_names
import 'package:nakliyeplus/variables.dart';
import 'package:flutter/material.dart';
// import '../main.dart';

class SohbetPage extends StatelessWidget {
  const SohbetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        decoration: putPageBackground(),
        child: Column(
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
      ),
    );
  }
}
