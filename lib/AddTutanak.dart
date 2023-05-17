import 'package:flutter/material.dart';
import 'package:animated_custom_dropdown/custom_dropdown.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sandık Bilgisi',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomDropdown.search(
              hintText: 'İl',
              items: ['İzmir', 'İstanbul', 'Ankara', 'Antalya'],
              controller: ilController,
            ),
            SizedBox(height: 20),
            CustomDropdown.search(
              hintText: 'İlçe',
              items: ['Karşıyaka', 'Bornova', 'Bayraklı', 'Konak'],
              controller: ilceController,
            ),
            SizedBox(height: 20),
            CustomDropdown.search(
              hintText: 'Okul',
              items: [
                'Bornova Anadolu Lisesi',
                'Karşıyaka Anadolu Lisesi',
                'Konak Anadolu Lisesi',
                'Bayraklı Anadolu Lisesi'
              ],
              controller: okulController,
            ),
            SizedBox(height: 20),
            CustomDropdown.search(
              hintText: 'Sandık No',
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
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: MaterialButton(
                color: Color.fromRGBO(25, 40, 65, 1),
                height: 60,
                minWidth: MediaQuery.of(context).size.width,
                onPressed: () {
                  Navigator.pushNamed(context, '/AddTutanakImage');
                },
                child: Text(
                  "İlerle",
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
