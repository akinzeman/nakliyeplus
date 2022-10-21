// ignore_for_file: file_names, avoid_print, unused_import

import 'dart:math';

import 'package:animations/animations.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';

import '../variables.dart';
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:nakliyeplus/main.dart';
import 'package:nakliyeplus/pages/yuk_gir.dart';
import 'package:nakliyeplus/pages/yuk_ara.dart';
import 'package:nakliyeplus/pages/arac_gir.dart';
import 'package:nakliyeplus/pages/arac_ara.dart';
// import 'package:nakliyeplus/main.dart';
// ignore: use_key_in_widget_constructors
// import 'package:page_transition/page_transition.dart'; // denendi şimdilik olmadı

class AnaSayfaPage extends StatelessWidget {
  const AnaSayfaPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final Controller gController = Get.put(Controller());

    return Scaffold(
      body: Container(
        decoration: putPageBackground(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Hero(
            //   tag: "yukgir",
            //   child: Padding(
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Wrap(
                  spacing: 20,
                  runSpacing: 20.0,
                  children: <Widget>[
                    // yük gir

                    // setState(() {
                    //   isAnimating = !isAnimating;
                    // });

                    // Get.to(YukGirPage(),
                    //     // duration: const Duration(
                    //     //     seconds:
                    //     //         3), //duration of transitions, default 1 sec
                    //     transition: Transition.noTransition
                    //     //  Transition.circularReveal //transition effect
                    //     );

                    SizedBox(
                      width: 160.0,
                      height: 160.0,
                      child: OpenContainer(
                        transitionDuration: const Duration(milliseconds: 500),
                        closedColor: Colors.transparent,
                        closedElevation: 12,
                        closedShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        openColor: Colors.transparent,
                        openElevation: 0,
                        transitionType: ContainerTransitionType.fade,
                        closedBuilder:
                            (BuildContext context, void Function() action) =>
                                Card(
                          color: colorPrimaryLight,
                          // elevation: 15.0,//OpenContainer yokken aç
                          shape: RoundedRectangleBorder(
                              // side: const BorderSide(
                              //     color: Color.fromARGB(153, 255, 255, 255),
                              //     width: 1),
                              borderRadius: BorderRadius.circular(18.0)),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: <Widget>[
                                const SizedBox(
                                  height: 15.0,
                                ),
                                Image.asset(
                                  "assets/images/yuk_gir.png",
                                  height: 56.0,
                                ),
                                const SizedBox(
                                  height: 25.0,
                                ),
                                const Text(
                                  "YÜK GİR",
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0),
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                              ],
                            ),
                          )),
                        ),
                        openBuilder: (BuildContext context,
                                void Function({Object? returnValue}) action) =>
                            YukGirPage(),
                      ),
                    ),

                    // araç gir
                    GestureDetector(
                      onTap: () {
                        // gController.scaleValue.value = 10;

                        // setState(() {
                        //   isAnimating = !isAnimating;
                        // });

                        Navigator.push(context,
                            CustomPageRoute(builder: (BuildContext context) {
                          return AracGirPage();
                        }));

                        // Get.to(AracGirPage(),
                        //     // duration: const Duration(
                        //     //     seconds:
                        //     //         3), //duration of transitions, default 1 sec
                        //     transition: Transition.noTransition
                        //     //  Transition.circularReveal //transition effect
                        //     );
                      },
                      child: SizedBox(
                        width: 160.0,
                        height: 160.0,
                        child: Card(
                          color: colorSecondaryLight,
                          elevation: 15.0,
                          shape: RoundedRectangleBorder(
                              // side: const BorderSide(
                              //     color: Color.fromARGB(153, 255, 255, 255),
                              //     width: 1),
                              borderRadius: BorderRadius.circular(18.0)),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: <Widget>[
                                const SizedBox(
                                  height: 15.0,
                                ),
                                Image.asset(
                                  "assets/images/arac_gir.png",
                                  height: 56.0,
                                ),
                                const SizedBox(
                                  height: 25.0,
                                ),
                                const Text(
                                  "ARAÇ GİR",
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 0.8),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0),
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                              ],
                            ),
                          )),
                        ),
                      ),
                    ),

                    // yük ara
                    GestureDetector(
                      onTap: () {
                        // gController.scaleValue.value = 10;
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return YukAraPage();
                        }));

                        // setState(() {
                        //   isAnimating = !isAnimating;
                        // });
                        // Get.to(YukAraPage(),
                        //     // duration: const Duration(
                        //     //     seconds:
                        //     //         3), //duration of transitions, default 1 sec
                        //     transition: Transition.noTransition
                        //     //  Transition.circularReveal //transition effect
                        //     );
                      },
                      child: SizedBox(
                        width: 160.0,
                        height: 160.0,
                        child: Card(
                          color: colorPrimary,
                          elevation: 15.0,
                          shape: RoundedRectangleBorder(
                              // side: const BorderSide(
                              //     color: Color.fromARGB(153, 255, 255, 255),
                              //     width: 1),
                              borderRadius: BorderRadius.circular(18.0)),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: <Widget>[
                                  const SizedBox(
                                    height: 15.0,
                                  ),
                                  Image.asset(
                                    "assets/images/yuk_ara.png",
                                    height: 56.0,
                                  ),
                                  const SizedBox(
                                    height: 25.0,
                                  ),
                                  const Text(
                                    "YÜK ARA",
                                    style: TextStyle(
                                        color:
                                            Color.fromRGBO(255, 255, 255, 0.9),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0),
                                  ),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    // araç ara
                    GestureDetector(
                      onTap: () {
                        // gController.scaleValue.value = 10;

                        /* original default */
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return AracAraPage();
                        }));

                        /* fadeTransition */
                        // Navigator.push(
                        //   context,
                        //   PageRouteBuilder(
                        //     pageBuilder: (_, __, ___) => AracAraPage(),
                        //     transitionDuration:
                        //         const Duration(milliseconds: 350),
                        //     // transitionsBuilder: (_, a, __, c) =>
                        //     //     FadeTransition(opacity: a, child: c),
                        //     transitionsBuilder: (_, a, __, c) =>
                        //         FadeTransition(opacity: a, child: c),
                        //     // FadeTransition(opacity: a, child: c),
                        //   ),
                        // );

                        /* without animation */
                        // Navigator.push(
                        //   context,
                        //   PageRouteBuilder(
                        //     pageBuilder: (_, __, ___) => AracAraPage(),
                        //     transitionDuration: const Duration(seconds: 2),
                        //   ),
                        // );

                        // setState(() {
                        //   isAnimating = !isAnimating;
                        // });
                        // Get.to(AracAraPage(),
                        //     // duration: const Duration(
                        //     //     seconds:
                        //     //         3), //duration of transitions, default 1 sec
                        //     transition: Transition.noTransition
                        //     //  Transition.circularReveal //transition effect
                        //     );
                      },
                      // child: Hero(
                      //   // transitionOnUserGestures: true,
                      //   tag: "aracara",
                      child: SizedBox(
                        width: 160.0,
                        height: 160.0,
                        child: Card(
                          color: colorSecondary,
                          elevation: 15.0,
                          shape: RoundedRectangleBorder(
                              // side:
                              // const BorderSide(
                              //     color: Color.fromARGB(153, 255, 255, 255),
                              //     width: 1),
                              borderRadius: BorderRadius.circular(18.0)),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: <Widget>[
                                  const SizedBox(
                                    height: 15.0,
                                  ),
                                  Image.asset(
                                    "assets/images/arac_ara.png",
                                    height: 56.0,
                                  ),
                                  const SizedBox(
                                    height: 25.0,
                                  ),
                                  const Text(
                                    "ARAÇ ARA",
                                    style: TextStyle(
                                        color:
                                            Color.fromRGBO(255, 255, 255, 0.7),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0),
                                  ),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // ),

                    // ElevatedButton(
                    //   onPressed: () {
                    //     print("basildi");
                    //   },
                    //   style: ElevatedButton.styleFrom(
                    //       elevation: 10.0,
                    //       backgroundColor: Colors.pink,
                    //       fixedSize: const Size(160, 160),
                    //       shape: RoundedRectangleBorder(
                    //           borderRadius: BorderRadius.circular(15))),
                    //   child: const Text('Kindacode.com'),
                    // ),
                  ],
                ),
              ),
            ),
            // )
          ],
        ),
      ),
    );
  }
}

/* page transition gidis gelis farklı --- dene */
class EnterExitRoute extends PageRouteBuilder {
  final Widget enterPage;
  final Widget exitPage;
  EnterExitRoute({required this.exitPage, required this.enterPage})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              enterPage,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              Stack(
            children: <Widget>[
              SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0.0, 0.0),
                  end: const Offset(-1.0, 0.0),
                ).animate(animation),
                child: exitPage,
              ),
              SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(1.0, 0.0),
                  end: Offset.zero,
                ).animate(animation),
                child: enterPage,
              )
            ],
          ),
        );
}
