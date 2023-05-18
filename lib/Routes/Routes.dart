import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:secim_bilgisi/Widgets/AddSecmen/AddSecmenListesi.dart';
import 'package:secim_bilgisi/Widgets/AddSecmen/AddSecmenListesiImage.dart';
import 'package:secim_bilgisi/Widgets/AddTutanak/AddTutanak.dart';
import 'package:secim_bilgisi/Widgets/AddTutanak/AddTutanakImage.dart';
import 'package:secim_bilgisi/Widgets/Home/Home.dart';
import 'package:secim_bilgisi/Widgets/Login/Login.dart';
import 'package:secim_bilgisi/Widgets/Profile/Profile.dart';
import 'package:secim_bilgisi/Widgets/Uploaded/Uploaded.dart';

class Routes {
  static Route _route(Widget widget, RouteSettings settings) {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return MaterialPageRoute(
          builder: (context) => widget, settings: settings);
    } else {
      return CupertinoPageRoute(
          builder: (context) => widget, settings: settings);
    }
  }

  static Route? routes(RouteSettings settings) {
    switch (settings.name) {
      case '/Login':
        return _route(Login(), settings);
      case '/Home':
        return _route(Home(), settings);
      case '/AddTutanak':
        return _route(AddTutanak(), settings);
      case '/AddTutanakImage':
        return _route(AddTutanakImage(), settings);
      case '/AddSecmenListesi':
        return _route(AddSecmenListesi(), settings);
      /*case '/AddSecmenListesiImage':
        return _route(AddSecmenListesiImage(), settings);*/
      case '/Profile':
        return _route(Profile(), settings);
      case '/Uploaded':
        return _route(Uploaded(), settings);
    }
  }
}
