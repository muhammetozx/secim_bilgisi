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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Scaffold(
        body: Login(),
      ),
      onGenerateRoute: Routes.routes,
    );
  }
}
