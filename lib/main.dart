import 'package:flutter/material.dart';
import 'package:secim_bilgisi/Login.dart';
import 'package:secim_bilgisi/Routes.dart';

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
              color: Color.fromRGBO(25, 40, 65, 1),
              iconTheme: IconThemeData(color: Colors.white)),
          primarySwatch: Colors.grey,
        ),
        home: Scaffold(
          body: Login(),
        ),
        onGenerateRoute: Routes.routes,
      ),
    );
  }
}
//14018a