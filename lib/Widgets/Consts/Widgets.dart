import 'package:flutter/material.dart';
import 'package:secim_bilgisi/Widgets/Consts/DecConsts.dart';
import 'package:secim_bilgisi/Widgets/Home/Home.dart';
import 'package:secim_bilgisi/Widgets/Login/Login.dart';
import 'package:secim_bilgisi/Widgets/Profile/Profile.dart';

class Widgets {
  appBarWithLogo(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      leading: GestureDetector(
          onTap: () {
            Widgets.returningWidget = Home();
            Widgets.SetState();
          },
          child: Image.asset('assets/images/logo.webp')),
      leadingWidth: 100,
      title: Padding(
        padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width / 2,
        ),
        child: Icon(
          Icons.mail,
          color: Colors.black,
        ),
      ),
    );
  }

  appBarWithoutLogo(String title) {
    return AppBar(
      title: Image.asset('assets/images/oylarBizimLogo.webp'),
      centerTitle: true,
    );
  }

  endDrawer(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromRGBO(25, 40, 65, 1),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(height: screenHeight / 19),
          Align(
            alignment: Alignment.centerRight,
            child: MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.close, color: Colors.white),
            ),
          ),
          Divider(color: Colors.black),
          ListTile(
            title: Text(
              "Profilim",
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
            onTap: () {
              //seçilinde drawerı kapatmak için
              Widgets.returningWidget = Profile();
              Widgets.SetState();
              Navigator.pop(context);
            },
          ),
          Divider(color: Colors.black),
          ListTile(
            title: Text(
              "Mesajlarım",
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
            onTap: () {
              //seçilinde drawerı kapatmak için
            },
          ),
          Divider(color: Colors.black),
          ListTile(
            title: Text(
              "Okullarım",
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
            onTap: () {
              //seçilinde drawerı kapatmak için
            },
          ),
          Divider(color: Colors.black),
          ListTile(
            title: Text(
              "Yüklemelerim",
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
            onTap: () {
              //seçilinde drawerı kapatmak için
            },
          ),
          Divider(color: Colors.black),
          ListTile(
            title: Text(
              "Arkadaşlarım",
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
            onTap: () {
              //seçilinde drawerı kapatmak için
            },
          ),
          Divider(color: Colors.black),
          ListTile(
            title: Text(
              "Hesabımı Sil",
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
            onTap: () {
              //seçilinde drawerı kapatmak için
            },
          ),
          Divider(color: Colors.black),
          ListTile(
            title: Text(
              "Çıkış Yap",
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
            onTap: () {
              //seçilinde drawerı kapatmak için
              Widgets.returningWidget = Login();
              Widgets.isLoginScreen = true;
              Widgets.SetState();
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  static Widget returningWidget = Login();
  static late Widget theonebefore;
  static bool isLoginScreen = true;

  static late Function SetState;
}
