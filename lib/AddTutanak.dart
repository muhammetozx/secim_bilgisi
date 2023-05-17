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
        title: Text('Sandık Bilgisi'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 170,
              child: Image.network(
                  'https://st.depositphotos.com/1049549/1366/i/600/depositphotos_13667514-stock-photo-man-hand-down-the-ballot.jpg'),
            ),
            SizedBox(height: 30),
            CustomDropdown.search(
              hintText: 'İl',
              items: const ['İzmir', 'İstanbul', 'Ankara', 'Antalya'],
              controller: ilController,
            ),
            SizedBox(height: 20),
            CustomDropdown.search(
              hintText: 'İlçe',
              items: const ['Karşıyaka', 'Bornova', 'Bayraklı', 'Konak'],
              controller: ilceController,
            ),
            SizedBox(height: 20),
            CustomDropdown.search(
              hintText: 'Okul',
              items: const [
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
              items: const [
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
            SizedBox(
              width: 250,
              height: 50,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/AddTutanakImage');
                },
                child: Text("İLERLE"),
                style: OutlinedButton.styleFrom(
                  shape: StadiumBorder(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
