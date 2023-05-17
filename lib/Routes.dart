import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:secim_bilgisi/AddSecmenListesi.dart';
import 'package:secim_bilgisi/AddSecmenListesiImage.dart';
import 'package:secim_bilgisi/AddTutanak.dart';
import 'package:secim_bilgisi/AddTutanakImage.dart';

import 'package:secim_bilgisi/Login.dart';
import 'package:secim_bilgisi/Home.dart';

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
      case '/AddSecmenListesiImage':
        return _route(AddSecmenListesiImage(), settings);
    }
  }
}
