import 'package:flutter/material.dart';
import 'package:secim_bilgisi/Routes/Routes.dart';
import 'package:secim_bilgisi/Widgets/Consts/DecConsts.dart';
import 'package:secim_bilgisi/Widgets/Login/Login.dart';
import 'package:secim_bilgisi/Screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
          FocusScope.of(context).requestFocus(new FocusNode());
        }
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: AppBarTheme(
              color: Color.fromRGBO(239, 242, 245, 1),
              iconTheme: IconThemeData(color: Colors.white)),
          primarySwatch: Colors.grey,
        ),
        home: Screens(),
        onGenerateRoute: Routes.routes,
      ),
    );
  }
}
//14018a