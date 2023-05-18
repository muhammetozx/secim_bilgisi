import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:secim_bilgisi/Widgets/AddSecmen/AddSecmenListesiImage.dart';
import 'package:secim_bilgisi/Widgets/Consts/DecConsts.dart';
import 'package:secim_bilgisi/Widgets/Consts/Widgets.dart';

class AddSecmenListesi extends StatefulWidget {
  const AddSecmenListesi({super.key});

  @override
  State<AddSecmenListesi> createState() => _AddSecmenListesiState();
}

class _AddSecmenListesiState extends State<AddSecmenListesi> {
  TextEditingController ilController = TextEditingController();
  TextEditingController ilceController = TextEditingController();
  TextEditingController mahalleNoController = TextEditingController();
  TextEditingController okulController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Generalboxshadowdecoration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
          SizedBox(height: 20),
          CustomDropdown.search(
            hintText: 'Mahalle',
            items: [
              'Bornova Anadolu Lisesi',
              'Karşıyaka Anadolu Lisesi',
              'Konak Anadolu Lisesi',
              'Bayraklı Anadolu Lisesi'
            ],
            controller: okulController,
          ),
          SizedBox(height: screenHeight / 90),
          CustomDropdown.search(
            hintText: 'Okul',
            items: [
              '1001',
              '1002',
              '1003',
              '1004',
              '1005',
              '1006',
              '1007',
              '1008',
              '1009',
              '1010',
              '1011',
              '1012',
            ],
            controller: mahalleNoController,
          ),
          SizedBox(height: screenHeight / 40),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: MaterialButton(
              color: Color.fromRGBO(25, 40, 65, 1),
              height: screenHeight / 15,
              minWidth: MediaQuery.of(context).size.width,
              onPressed: () {
                Widgets.returningWidget = AddSecmenListesiImage(
                  il: ilController.text,
                  ilce: ilceController.text,
                  mahalle: mahalleNoController.text,
                  okul: okulController.text,
                );
                Widgets.SetState();
              },
              child: Text(
                "İlerle",
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
