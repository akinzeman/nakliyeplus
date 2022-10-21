/* global variables */

import 'package:flutter/material.dart';

// var appTitle = "NAKLİYE PLUS";
// const colorPrimary = Color.fromRGBO(252, 168, 42, 1);
const colorPrimary = Color.fromARGB(255, 255, 174, 51);
const colorPrimaryLight = Color(0xFFFFCC80);
const colorSecondary = Colors.blue;
const colorSecondaryLight = Color(0xFF64B5F6);

// const colorPageBgr = [
//   Color.fromARGB(255, 171, 210, 247),
//   Color.fromRGBO(255, 255, 255, 1),
// ];

BoxDecoration putPageBackground() {
  return const BoxDecoration(
    // gradient: LinearGradient(
    //   begin: Alignment.topCenter, // .topRight,
    //   end: Alignment.bottomCenter, //.bottomLeft,
    //   // colors: colorPageBgr,
    //   colors: colorPageBgr,
    // ),
    image: DecorationImage(
      image: AssetImage("assets/images/arka.png"),
      fit: BoxFit.cover,
    ),
  );
}
