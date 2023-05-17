import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profilim',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
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
              SizedBox(height: 15),
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
              SizedBox(height: 15),
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
                hintText: 'Mahalle',
                items: ['İnönü', 'Cumhuriyet', 'Dedebaşı', 'Örnekköy'],
                controller: mahalleController,
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: MaterialButton(
                  color: Color.fromRGBO(25, 40, 65, 1),
                  height: 60,
                  minWidth: MediaQuery.of(context).size.width,
                  onPressed: () {
                    Navigator.popUntil(context, ModalRoute.withName('/Home'));
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
