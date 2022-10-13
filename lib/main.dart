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

// void main() => runApp(Provider<AppController>(
//     // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
//     create: (BuildContext, context) => AppController(), child: MyApp()));

void main() {
  runApp(ChangeNotifierProvider<AppController>(
    create: (context) => AppController(),
    child: MyApp(),
  ));
}

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
    final sayfalar = [
      EslesmePage(),
      IlanlarPage(),
      AnaSayfaPage(),
      SohbetPage(),
      FihristPage()
      // ProfilePage()
    ];

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            extendBodyBehindAppBar: true, // body'app barın arkasına kaysın
            appBar: AppBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: const <Widget>[
                  Center(
                    // child: StyledAppTitle(),
                    child: StyledAppTitle(),
                  ),
                ],
              ),
              centerTitle: true,
              elevation: 30.0,
              backgroundColor:
                  Colors.transparent, // colorSecondary, //.white70,
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

            /* stateless olmasına ragmen her tab degistiginde neden buraya geliyor */
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

                      context.read<AppController>().changeActiveConvexTab(i),
                      //yukardaki ile bu aynı...->  Provider.of<AppController>(context, listen: false).changeActiveConvexTab(i),

                      // setState(() {
                      //   //todo: buraya getx yap
                      //   selectedPage = i;
                      // })
                    }),
          ),
        ));
  }
}

//// https://docs.flutter.dev/development/data-and-backend/state-mgmt/simple
// return Consumer<AppController>(
//   builder: (context, cart, child) {
//     return Text('Total price: ${cart.totalPrice}');
//   },
// );
/* // context.watch ile  */
// class StyledAppTitle extends StatelessWidget {
//   const StyledAppTitle({super.key});
//   // final ttt = Provider.of<AppController>(context, listen: false).appTitle;
//   // final xxx = (context.watch<AppController>().appTitle).toString()
//   @override
//   Widget build(BuildContext context) {
//     // print(context.watch<AppController>().appTitle);
//     // return Text(appTitle,
//     return Text(context.watch<AppController>().appTitle,
//         style: TextStyle(
//             color: Color.fromRGBO(255, 255, 255, .9),
//             fontSize: 22.0,
//             fontWeight: FontWeight.bold));
//   }
// }

/* consumer ile */
class StyledAppTitle extends StatelessWidget {
  const StyledAppTitle({super.key});
  // final ttt = Provider.of<AppController>(context, listen: false).appTitle;
  // final xxx = (context.watch<AppController>().appTitle).toString()
  @override
  Widget build(BuildContext context) {
    // print(context.watch<AppController>().appTitle);
    // return Text(appTitle,
    return Consumer<AppController>(builder: (context, provider, child) {
      return Text(provider.activeConvexTab.toString(),
          style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, .9),
              fontSize: 22.0,
              fontWeight: FontWeight.bold));
    });
  }
}
