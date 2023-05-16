import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:secim_bilgisi/Results.dart';
import 'package:secim_bilgisi/GetIn.dart';
import 'package:secim_bilgisi/AddResult.dart';

import 'Home.dart';

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
      case '/Home':
        return _route(Home(), settings);
      case '/Results':
        return _route(Results(), settings);
      case '/GetIn':
        return _route(GetIn(), settings);
      case '/AddResult':
        return _route(AddResult(), settings);
    }
  }
}
