import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:secim_bilgisi/Widgets/Consts/DecConsts.dart';
import 'package:secim_bilgisi/Widgets/Consts/Widgets.dart';

import '../Home/Home.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController ilController = TextEditingController();
  TextEditingController ilceController = TextEditingController();
  TextEditingController mahalleController = TextEditingController();
  TextEditingController egitimDurumuController = TextEditingController();
  TextEditingController aracVarmi = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            decoration: Generalboxshadowdecoration,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Kişisel Bilgiler',
                      style: TextStyle(
                        fontSize: 26,
                        color: Color.fromRGBO(255, 0, 118, 1),
                      ),
                    ),
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Adınız Soyadınız',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight / 120),
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Doğum Yılı',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight / 120),
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'TC Kimlik',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight / 120),
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'E-posta',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(height: screenHeight / 40),
          Container(
            decoration: Generalboxshadowdecoration,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Oy Kullanacağınız Yer',
                      style: TextStyle(
                        fontSize: 26,
                        color: Color.fromRGBO(255, 0, 118, 1),
                      ),
                    ),
                  ),
                  CustomDropdown.search(
                    hintText: 'İl',
                    items: ['İzmir', 'İstanbul', 'Ankara', 'Antalya'],
                    controller: ilController,
                  ),
                  SizedBox(height: screenHeight / 90),
                  CustomDropdown.search(
                    hintText: 'İlçe',
                    items: ['Karşıyaka', 'Bornova', 'Bayraklı', 'Konak'],
                    controller: ilceController,
                  ),
                  SizedBox(height: screenHeight / 90),
                  CustomDropdown.search(
                    hintText: 'Mahalle',
                    items: ['İnönü', 'Cumhuriyet', 'Dedebaşı', 'Örnekköy'],
                    controller: mahalleController,
                  ),
                ],
              ),
            ),
          ),
          Container(height: screenHeight / 40),
          Container(
            decoration: Generalboxshadowdecoration,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Eğitim ve Meslek Bilgileri',
                      style: TextStyle(
                        fontSize: 26,
                        color: Color.fromRGBO(255, 0, 118, 1),
                      ),
                    ),
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Mesleğiniz',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight / 120),
                  CustomDropdown.search(
                    hintText: 'Eğitim Durumu',
                    items: [
                      'İlkOkul',
                      'Ortaokul',
                      'Lise',
                      'Ön Lisans',
                      'Lisans'
                    ],
                    controller: egitimDurumuController,
                  ),
                ],
              ),
            ),
          ),
          Container(height: screenHeight / 40),
          Container(
            decoration: Generalboxshadowdecoration,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      ' Diğer Bilgiler',
                      style: TextStyle(
                        fontSize: 26,
                        color: Color.fromRGBO(255, 0, 118, 1),
                      ),
                    ),
                  ),
                  CustomDropdown.search(
                    hintText: 'Kendinize Ait Aracınız Var mı?',
                    items: [
                      'Var',
                      'Yok',
                    ],
                    controller: aracVarmi,
                  ),
                  SizedBox(height: screenHeight / 120),
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Notunuzu Yazınız',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: MaterialButton(
              color: Color.fromRGBO(25, 40, 65, 1),
              height: screenHeight / 15,
              minWidth: MediaQuery.of(context).size.width,
              onPressed: () {
                Widgets.returningWidget = Home();
                Widgets.SetState();
              },
              child: Text(
                "Kaydet",
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
