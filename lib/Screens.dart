import 'package:flutter/material.dart';
import 'package:secim_bilgisi/Widgets/Consts/DecConsts.dart';
import 'package:secim_bilgisi/Widgets/Consts/Widgets.dart';
import 'package:secim_bilgisi/Widgets/Login/Login.dart';

class Screens extends StatefulWidget {
  const Screens({super.key});

  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  @override
  void initState() {
    Widgets.SetState = _setstate;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      endDrawer: Widgets.isLoginScreen ? null : Widgets().endDrawer(context),
      appBar: Widgets.isLoginScreen
          ? Widgets().appBarWithoutLogo('Giriş Yap')
          : Widgets().appBarWithLogo(context),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            height: Widgets.isLoginScreen
                ? MediaQuery.of(context).size.height * 1.05
                : MediaQuery.of(context).size.height / 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: screenHeight / 45,
                ),
                Widgets.returningWidget,
                Container(
                  height: screenHeight / 45,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      decoration: Generalboxshadowdecorationwithoutradius,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(
                          MediaQuery.of(context).size.width / 3.7,
                          MediaQuery.of(context).size.width / 20,
                          MediaQuery.of(context).size.width / 3.7,
                          MediaQuery.of(context).size.width / 20,
                        ),
                        child: Text(
                          '@2023 oylarbizim.org',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                        ),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _setstate() {
    setState(() {});
  }
}
