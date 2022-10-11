// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

/* import global variables from variables.dart */
import 'variables.dart';

import 'package:provider/provider.dart';

/* custom pages */
import 'pages/anasayfa.dart';
import 'pages/eslesme.dart';
import 'pages/ilanlar.dart';
import 'pages/sohbet.dart';
import 'pages/fihrist.dart';
// import 'pages/Profile.dart';

// import 'dart:html';

import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
// import 'package:animations/animations.dart';
// import 'package:flutter/cupertino.dart'; // importa gerek yok denildi

/* debug amaçlı paketler */
// import 'package:flutter/scheduler.dart'; // timeDilation=5;// animasyon hızı
// import 'package:flutter/rendering.dart'; // debugPaintSizeEnabled = true;

void main() => runApp(MyApp());

class AppController extends ChangeNotifier {
  int activeConvexTab = 2;
  String appTitle = "NAKLİYE PLUS";

  void changeActiveConvexTab(int i) {
    activeConvexTab = i;
    notifyListeners();
  }

  void setAppTitle(String str) {
    appTitle = str;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // timeDilation=5;// animasyon hızı // import 'package:flutter/scheduler.dart';
// debugPaintSizeEnabled = true; // import 'package:flutter/rendering.dart';
    return ChangeNotifierProvider<AppController>(
        create: (_) => AppController(),
        child: MaterialApp(
            home: MyHomePage(
              title: "NAKLİYE PLUS",
            ),
            debugShowCheckedModeBanner: false));
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
// // timeDilation=5;// animasyon hızı // import 'package:flutter/scheduler.dart';
// // debugPaintSizeEnabled = true; // import 'package:flutter/rendering.dart';

//     return MyHomePage(title: "NAKLİYE PLUS");
//   }
// }

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required String title}) : super(key: key);

  final sayfalar = [
    EslesmePage(),
    IlanlarPage(),
    AnaSayfaPage(),
    SohbetPage(),
    FihristPage()
    // ProfilePage()
  ];

/* unutma: Bunu widget build hemen altına koymayı unutma !! */

  // const colorYukAra = Color.fromRGBO(255, 166, 48, 1);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true, // body'app barın arkasına kaysın
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: const <Widget>[
              Center(
                child: Text("NAKLİYE PLUS",
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, .9),
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          centerTitle: true,
          elevation: 30.0,
          backgroundColor: Colors.transparent, // colorSecondary, //.white70,
          // foregroundColor: Colors.black87,

          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color.fromARGB(255, 250, 107, 25), colorPrimary],
                // colors: [colorSecondary, colorSecondaryLight],
              ),
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(40.0),
                bottomLeft: const Radius.circular(40.0),
                bottomRight: const Radius.circular(40.0),
              ),
            ),
          ),

          /* appbarın köşelerini yuvarlamak istersen, yukardaki flexible space varken calısmaz! */
          // shape: RoundedRectangleBorder(
          //   ////tüm köşeler
          //   // borderRadius: BorderRadius.circular(30),

          //   /* sadece alttaki köşeler içinse */
          //   borderRadius: BorderRadius.vertical(
          //     bottom: Radius.circular(30),
          //   ),
          // ),

          // appbarın soldaki ilk menu iconu, profil photo
          leading: Container(
            // padding: const EdgeInsets.all(8), // +Border width, dışa dogru
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                color: Colors.white,
                width: 1.0,
              ),
              shape: BoxShape.circle,
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.black.withOpacity(0.5),
              //     spreadRadius: 10,
              //     blurRadius: 20,
              //     offset: Offset(0, 0), // changes position of shadow
              //   ),
              // ],
            ),
            child: ClipOval(
              child: SizedBox.fromSize(
                size: const Size.fromRadius(30), // Image radius
                child: Image.asset(
                  "assets/images/profile.jpg",
                  // height: 32.0,
                  // width: 32.0,
                ),
                // Image.network('imageUrl', fit: BoxFit.cover),
              ),
            ),
          ),

          // // appbarın en sağında yer alan demek
          // actions: [
          //   IconButton(
          //     onPressed: () {},
          //     icon: Icon(
          //       Icons.call,
          //       // color: Colors.black87,
          //       // size: 52.0,
          //     ),
          //   ),
          //   IconButton(
          //     onPressed: () {},
          //     icon: Icon(Icons.more_vert),
          //   ),
          // ],
        ),

        //scaffold background
        // backgroundColor: colorScaffold,

        body: sayfalar[Provider.of<AppController>(context).activeConvexTab],

        bottomNavigationBar: ConvexAppBar(
            items: const [
              // TabItem(icon: CupertinoIcons.cube_box, title: 'Ana Sayfa'),
              TabItem(icon: Icons.find_replace_outlined, title: 'Eşleşme'),
              TabItem(icon: Icons.map, title: 'İlanlar'),
              TabItem(icon: Icons.grid_view_outlined, title: 'Ana Sayfa'),
              TabItem(icon: Icons.chat_bubble_outline, title: 'Sohbet'),
              // TabItem(icon: Icons.message, title: 'Sohbet'),
              TabItem(icon: Icons.people, title: 'Fihrist'),
            ],
            // style: TabStyle.fixed, // burada animasyon yok
            // cornerRadius: 20,
            initialActiveIndex: 2,
            // activeColor: Colors.orange,
            // color: Colors.white, //passive items color
            onTap: (int i) => {
                  print('click index=$i'),
                  Provider.of<AppController>(context, listen: false)
                      .changeActiveConvexTab(i)
                  // setState(() {
                  //   //todo: buraya getx yap
                  //   selectedPage = i;
                  // })
                }),
      ),
    );
  }
}
