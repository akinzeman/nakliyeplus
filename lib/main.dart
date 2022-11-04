// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

/* import global variables from variables.dart */
// import 'dart:html';

import 'dart:async'; // Timer, await fonksiyonu için gerekli

import 'custom_widgets.dart';
import 'variables.dart';

import 'package:provider/provider.dart';

/* custom pages */
import 'pages/anasayfa.dart';
import 'pages/eslesme.dart';
import 'pages/ilanlar.dart';
import 'pages/sohbet.dart';
import 'pages/fihrist.dart';
// import 'package:nakliyeplus/pages/profile.dart';
import 'pages/drawer_page.dart'; // import 'package:nakliyeplus/pages/profile.dart';

// import 'dart:html';

import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
// import 'package:animations/animations.dart';
// import 'package:flutter/cupertino.dart'; // importa gerek yok denildi

//native share
// import 'package:page_transition/page_transition.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

/* system related packages */
// import 'package:flutter/services.dart'; // bottom navbar, top status bar related etc

/* debug amaçlı paketler */
// import 'package:flutter/scheduler.dart'  show timeDilation; // timeDilation=5;// animasyon hızı
// import 'package:flutter/rendering.dart'; // debugPaintSizeEnabled = true;

// void main() => runApp(Provider<AppController>(
//     // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
//     create: (BuildContext, context) => AppController(), child: MyApp()));

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /* alttaki android navigationı ve üstteki appbarı kaldırmak için
  need import 'package:flutter/services.dart'; */
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky,
  //     overlays: []); //tip

  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky, overlays: [SystemUiOverlay.bottom]); //tip

  //.leanBack);// ekrana dokununda sistem çubukları geri gelir
  //.edgeToEdge); // fullscreen behind sistem çubukları
  //.immersiveSticky);// ekran alttan/üstten swipe edince sistem cubukları gelir bi süre sonra gider. swipe uygulama tarafından da algilanir,
  //.immersive);// ekran alttan/üstten swipe edince sistem cubukları gelir kalır

  // var removeSplashTimer = Timer(const Duration(seconds: 7), () => FlutterNativeSplash.remove());  // bu satır eğer flutter_native_splash: ^2.2.10+1  dependencies de ise gecerli, dev_dependencies de ise otomatik

  // timeDilation =  1.0; // animasyon hızı // import 'package:flutter/scheduler.dart';

  // // var removeSplashTimer =
  // Timer(
  //     const Duration(milliseconds: 3000), () => {FlutterNativeSplash.remove()});

  await Future.delayed(const Duration(milliseconds: 1500));
  FlutterNativeSplash
      .remove(); // todo: burayı kaldır.. https://pub.dev/packages/flutter_native_splash/example

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
// debugPaintSizeEnabled = true; // import 'package:flutter/rendering.dart';
    final sayfalar = [
      EslesmePage(),
      IlanlarPage(),
      AnaSayfaPage(),
      SohbetPage(),
      FihristPage()
      // ProfilePage()
    ];
    /* route yapıldıktan sonra appbardaki title isimleri */
    final sayfaBasliklari = [
      "EŞLEŞME",
      "İLANLAR",
      "NAKLİYE PLUS",
      "SOHBET",
      "FİHRİST"
    ];
    final scaffoldKey = GlobalKey<ScaffoldState>(); // drawer icin gerekli
    return MaterialApp(
      /* tip: devicetan bağımsız text sizeları sabit tutmak için */
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: child!,
        );
      },
//

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: scaffoldKey,

        extendBodyBehindAppBar: true, // body'app barın arkasına kaysın
        //
        drawer: DrawerWidget(),
        //
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: const <Widget>[
              Center(
                child: StyledAppTitle(),
              ),
            ],
          ),
          centerTitle: true,
          elevation: 25.0,
          backgroundColor: Colors.transparent, // colorSecondary, //.white70,
          // foregroundColor: Colors.black87,

          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color.fromARGB(255, 250, 113, 33), colorPrimary],
                // colors: [colorSecondary, colorSecondaryLight],
              ),
              borderRadius: BorderRadius.only(
                // topLeft: const Radius.circular(40.0),
                bottomLeft: const Radius.circular(40.0),
                bottomRight: const Radius.circular(40.0),
              ),
            ),
          ),

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
            child: InkWell(
              onTap: () {
                toggleDrawer(scaffoldKey); //openDrawer
              },
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

        body: Builder(builder: (context) {
          return sayfalar[Provider.of<AppController>(context).activeConvexTab];
        }),

        /* stateless olmasına ragmen her tab degistiginde neden buraya geliyor */
        bottomNavigationBar: ConvexAppBar(
            items: const [
              // TabItem(icon: CupertinoIcons.cube_box, title: 'Ana Sayfa'),
              TabItem(icon: Icons.find_replace_outlined, title: 'Eşleşme'),
              TabItem(icon: Icons.map, title: 'İlanlar'),
              TabItem(icon: Icons.grid_view_outlined, title: 'Menü'),
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

                  /* todo:sor: burası amator */
                  context.read<AppController>().setAppTitle(sayfaBasliklari[i]),

                  context.read<AppController>().changeActiveConvexTab(i),

                  //yukardaki ile bu aynı...->  Provider.of<AppController>(context, listen: false).changeActiveConvexTab(i),

                  // setState(() {
                  //   //todo: buraya getx yap
                  //   selectedPage = i;
                  // })
                }),
      ),
    );
  }

  void toggleDrawer(GlobalKey<ScaffoldState> scaffoldKey) {
    scaffoldKey.currentState!.isDrawerOpen
        ? scaffoldKey.currentState!.closeDrawer()
        : scaffoldKey.currentState!.openDrawer();
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

//todo: later add this to custom lib
class CustomPageRoute extends MaterialPageRoute {
  CustomPageRoute({required WidgetBuilder builder}) : super(builder: builder);

  @override
  Duration get transitionDuration => const Duration(milliseconds: 500);
}
