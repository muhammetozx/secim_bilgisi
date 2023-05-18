import 'dart:io';

import 'package:flutter/material.dart';
import 'package:secim_bilgisi/Widgets/Consts/DecConsts.dart';
import 'package:secim_bilgisi/Widgets/Consts/Widgets.dart';

class ShowImage extends StatefulWidget {
  String path;
  ShowImage({required this.path, super.key});

  @override
  State<ShowImage> createState() => _ShowImageState();
}

class _ShowImageState extends State<ShowImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: screenHeight * 0.7,
        child: Expanded(child: Image.file(File(widget.path))));
  }
}
