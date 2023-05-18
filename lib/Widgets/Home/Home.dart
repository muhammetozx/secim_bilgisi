import 'package:flutter/material.dart';
import 'package:secim_bilgisi/Widgets/AddSecmen/AddSecmenListesi.dart';
import 'package:secim_bilgisi/Widgets/AddTutanak/AddTutanak.dart';
import 'package:secim_bilgisi/Widgets/Consts/DecConsts.dart';
import 'package:secim_bilgisi/Widgets/Consts/Widgets.dart';
import 'package:secim_bilgisi/Widgets/Profile/Profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int secilenIndeks = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: screenHeight / 2,
          decoration: Generalboxshadowdecoration,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: MaterialButton(
                  color: Color.fromRGBO(25, 40, 65, 1),
                  height: screenHeight / 15,
                  minWidth: MediaQuery.of(context).size.width,
                  onPressed: () {
                    Widgets.returningWidget = AddTutanak();
                    Widgets.SetState();
                  },
                  child: Text(
                    "Tutanak Giriş",
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: MaterialButton(
                  color: Color.fromRGBO(25, 40, 65, 1),
                  height: screenHeight / 15,
                  minWidth: MediaQuery.of(context).size.width,
                  onPressed: () {
                    Widgets.returningWidget = AddSecmenListesi();
                    Widgets.SetState();
                  },
                  child: Text(
                    "Seçmen Listesi Giriş",
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: screenHeight / 60),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: MaterialButton(
                  color: Color.fromRGBO(35, 57, 93, 1),
                  height: screenHeight / 15,
                  minWidth: MediaQuery.of(context).size.width,
                  onPressed: () {
                    Widgets.returningWidget = Home();
                    Widgets.SetState();
                  },
                  child: Text(
                    "Okul Sahiplen",
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: MaterialButton(
                  color: Color.fromRGBO(35, 57, 93, 1),
                  height: screenHeight / 15,
                  minWidth: MediaQuery.of(context).size.width,
                  onPressed: () {
                    Widgets.returningWidget = Home();
                    Widgets.SetState();
                  },
                  child: Text(
                    "Sandık Sahiplen",
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: MaterialButton(
                  color: Color.fromRGBO(35, 57, 93, 1),
                  height: screenHeight / 15,
                  minWidth: MediaQuery.of(context).size.width,
                  onPressed: () {
                    Widgets.returningWidget = Home();
                    Widgets.SetState();
                  },
                  child: Text(
                    "Yardım Talebi",
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
