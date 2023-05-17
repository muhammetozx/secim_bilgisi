import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  List<TextEditingController> _controllers =
      List.generate(3, (index) => TextEditingController());
  bool isPhoneCorrect = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100),
          Text(
            'oylarbizim.org',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
          ),
          Expanded(
            flex: 2,
            child: Container(),
          ),
          Text(
            'Oyuna Sahip Çıkmak İçin',
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(height: 10),
          Expanded(
            flex: 1,
            child: _textFields(_controllers[0], 'Ad Soyad'),
          ),
          Expanded(
            flex: 1,
            child: _textFields(_controllers[1], 'Telefon Numarası'),
          ),
          Expanded(
            flex: 1,
            child: _textFields(_controllers[2], 'Onay Kodu'),
          ),
          Expanded(
            flex: 1,
            child: Container(),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(
              width: 250,
              height: 50,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Home');
                },
                child: Text("GİRİŞ YAP"),
                style: OutlinedButton.styleFrom(
                  shape: StadiumBorder(),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(),
          ),
        ],
      ),
    );
  }

  _textFields(TextEditingController controller, String hintText) {
    return Padding(
      padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
      child: TextField(
        keyboardType:
            hintText == 'Telefon Numarası' ? TextInputType.phone : null,
        controller: controller,
        decoration: InputDecoration(
          labelText: hintText,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
