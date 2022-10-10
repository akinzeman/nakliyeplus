// ignore_for_file: file_names, avoid_print, unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nakliyeplus/pages/arac_ara.dart';
// import 'package:nakliyeplus/main.dart';
// ignore: use_key_in_widget_constructors
import '../variables.dart';

class Controller extends GetxController {
  // final isAnimating = false.obs;
  final scaleValue = 1.0.obs;

  /* samples */
  // final name = ''.obs;
  // final isLogged = false.obs;
  // final count = 0.obs;
  // final balance = 0.0.obs;
  // final number = 0.obs;
  // final items = <String>[].obs;
  // final myMap = <String, int>{}.obs;

  // final user = User().obs; // Custom classes - it can be any class, literally

  //---------------https://sarunw.com/posts/how-to-create-observable-derived-variables-in-getx/
  // final _acceptPrivacyPolicy = false.obs;
  // final _acceptTermAndCondition = false.obs;
  // bool get _canGoNext => _acceptPrivacyPolicy.value && _acceptTermAndCondition.value;
  //// then usage
  // Obx( () => ElevatedButton(
  //   onPressed: _canGoNext  ? () {}  : null,
  //   child: const Text("Next"),
  // ), )
  // or
  // bool get _canGoNext {return _acceptPrivacyPolicy.value && _acceptTermAndCondition.value;}
  //---------------
}

class AnaSayfaPage extends StatelessWidget {
  const AnaSayfaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Controller gController = Get.put(Controller());

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter, // .topRight,
            end: Alignment.bottomCenter, //.bottomLeft,
            colors: [
              Color.fromARGB(255, 171, 210, 247),
              Color.fromRGBO(255, 255, 255, 1),
            ],
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
                    SizedBox(
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
                    // araç gir
                    SizedBox(
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
                    // yük ara

                    GestureDetector(
                      onTap: () {
                        print("basildiiii");
                        gController.scaleValue.value = 10;

                        // setState(() {
                        //   isAnimating = !isAnimating;
                        // });
                        // Get.to(AracAraPage(),
                        //     // duration: const Duration(
                        //     //     seconds:
                        //     //         3), //duration of transitions, default 1 sec
                        //     transition:
                        //         Transition.circularReveal //transition effect
                        //     );
                      },
                      child: AnimatedScale(
                        scale: 20, // gController.scaleValue,
                        duration: const Duration(seconds: 20),
                        curve: Curves
                            .fastOutSlowIn, //  isAnimating ? Curves.bounceIn : Curves.bounceOut,
                        onEnd: () {
                          print("animasyon bitti");
                          // setState(() {
                          //     animationEnd = true;
                          // });
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
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.9),
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
                    ),

                    // araç ara
                    SizedBox(
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
                                      color: Color.fromRGBO(255, 255, 255, 0.7),
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
