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
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: Generalboxshadowdecoration,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Ad Soyad',
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
                  labelText: 'Tc',
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
              SizedBox(height: screenHeight / 90),
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
        ),
      ),
    );
  }
}
