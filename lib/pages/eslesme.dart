// ignore_for_file: file_names

import 'package:nakliyeplus/variables.dart';
import 'package:flutter/material.dart';

// import 'package:provider/provider.dart';
// import '../main.dart'; //appControllera erismek icin gerekti

// ignore: non_constant_identifier_names

class EslesmePage extends StatelessWidget {
  const EslesmePage({super.key});

  @override
  Widget build(BuildContext context) {
    // bu alttakilerin hepsi calisiyor.. !! sadece anında consume edilmiyor ?! "sor: sebebi ne"
    // context.read<AppController>().appTitle = "EŞLEŞME";
    // context.read<AppController>().setAppTitle("EŞLEŞME");
    // Provider.of<AppController>(context, listen: false).setAppTitle("EŞLEŞME");
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
