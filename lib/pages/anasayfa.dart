// ignore_for_file: file_names, avoid_print, unused_import

import '../variables.dart';
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nakliyeplus/pages/yuk_gir.dart';
import 'package:nakliyeplus/pages/yuk_ara.dart';
import 'package:nakliyeplus/pages/arac_gir.dart';
import 'package:nakliyeplus/pages/arac_ara.dart';
// import 'package:nakliyeplus/main.dart';
// ignore: use_key_in_widget_constructors

class AnaSayfaPage extends StatelessWidget {
  const AnaSayfaPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final Controller gController = Get.put(Controller());

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter, // .topRight,
            end: Alignment.bottomCenter, //.bottomLeft,
            colors: colorPageBgr,
            // stops: [0.1, 0.5, 0.7, 0.9],

            // colors: [Colors.purple, Colors.blue],
            // colors: [
            //   Colors.indigo[800],
            //   Colors.indigo[700],
            //   Colors.indigo[600],
            //   Colors.indigo[400],
            // ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Padding(
            //   padding: EdgeInsets.all(18.0),
            //   child: Text(
            //     "Hoşgeldin Murat,",
            //     style: TextStyle(
            //       color: Color.fromARGB(255, 39, 39, 39),
            //       fontSize: 18.0,
            //       // fontWeight: FontWeight.bold
            //     ),
            //     textAlign: TextAlign.start,
            //   ),
            // ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Wrap(
                  spacing: 20,
                  runSpacing: 20.0,
                  children: <Widget>[
                    // yük gir
                    GestureDetector(
                      onTap: () {
                        // gController.scaleValue.value = 10;
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return YukGirPage();
                        }));

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
                      },
                      child: SizedBox(
                        width: 160.0,
                        height: 160.0,
                        child: Card(
                          color: colorPrimaryLight,
                          elevation: 12.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
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
                            MaterialPageRoute(builder: (BuildContext context) {
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
                          elevation: 12.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
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
                          elevation: 12.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return AracAraPage();
                        }));

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
                      child: SizedBox(
                        width: 160.0,
                        height: 160.0,
                        child: Card(
                          color: colorSecondary,
                          elevation: 12.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
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
            )
          ],
        ),
      ),
    );
  }
}
