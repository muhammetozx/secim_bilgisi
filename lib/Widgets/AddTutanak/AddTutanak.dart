import 'package:flutter/material.dart';
import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:secim_bilgisi/Widgets/AddTutanak/AddTutanakImage.dart';
import 'package:secim_bilgisi/Widgets/Consts/DecConsts.dart';
import 'package:secim_bilgisi/Widgets/Consts/Widgets.dart';

class AddTutanak extends StatefulWidget {
  const AddTutanak({super.key});

  @override
  State<AddTutanak> createState() => _AddTutanakState();
}

class _AddTutanakState extends State<AddTutanak> {
  TextEditingController ilController = TextEditingController();
  TextEditingController ilceController = TextEditingController();
  TextEditingController okulController = TextEditingController();
  TextEditingController sandikNoController = TextEditingController();
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
          SizedBox(height: screenHeight / 90),
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
            controller: sandikNoController,
          ),
          SizedBox(height: screenHeight / 40),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: MaterialButton(
              color: Color.fromRGBO(25, 40, 65, 1),
              height: screenHeight / 15,
              minWidth: MediaQuery.of(context).size.width,
              onPressed: () {
                Widgets.returningWidget = AddTutanakImage();
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
