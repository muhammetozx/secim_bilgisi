import 'package:flutter/material.dart';

BoxDecoration Generalboxshadowdecoration = BoxDecoration(
    color: Colors.white,
    boxShadow: [
      BoxShadow(
          offset: Offset(0.5, 0.8),
          color: Colors.black.withOpacity(0.1),
          spreadRadius: 4,
          blurRadius: 4)
    ],
    shape: BoxShape.rectangle,
    borderRadius: BorderRadius.circular(20));

BoxDecoration Generalboxshadowdecorationwithoutradius = BoxDecoration(
  color: Colors.white,
  boxShadow: [
    BoxShadow(
        offset: Offset(0.5, 0.8),
        color: Colors.black.withOpacity(0.1),
        spreadRadius: 4,
        blurRadius: 4)
  ],
  shape: BoxShape.rectangle,
);

late double screenHeight;
late double screenWidth;
