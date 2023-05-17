import 'dart:async';

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  List<TextEditingController> _controllers =
      List.generate(2, (index) => TextEditingController());
  bool isrequested = false;
  bool isPhoneCorrect = false;
  bool iskvkk = false;
  bool waiting = false;
  Timer? _timer;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'OYLAR BİZİM',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          shrinkWrap: true,
          children: [
            SizedBox(height: 30),
            Text(
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              """Merhaba,
Hızlı ve şeffaf seçim sonuçları için
Türkiye'nin sana ihtiyacı var""",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
            ),
            Container(height: 50),
            SizedBox(height: 10),
            _textFields(_controllers[0], 'Telefon Numaranızı Griniz'),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Checkbox(
                    value: iskvkk,
                    onChanged: (value) {
                      iskvkk = value!;
                      setState(() {});
                    },
                  ),
                  Text('KVKK izni'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: MaterialButton(
                color: Color.fromRGBO(25, 40, 65, 1),
                height: 60,
                minWidth: MediaQuery.of(context).size.width,
                onPressed: () async {
                  if (_controllers[0].text.length > 9) {
                    if (isrequested == true) {
                      print('başladı');

                      print('bitti');
                    }
                    isrequested = true;
                    if (count == 120 || count == 0) startTimer();
                    setState(() {});
                  } else {
                    isrequested = false;
                    setState(() {});
                  }
                },
                child: Text(
                  "Gönder",
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
              ),
            ),
            waiting ? Text('$count bekleme saniyeniz kaldı') : Container(),
            SizedBox(height: 20),
            isrequested
                ? _textFields(_controllers[1], 'Onay Kodu')
                : Container(),
            isrequested
                ? Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: MaterialButton(
                      color: Color.fromRGBO(25, 40, 65, 1),
                      height: 60,
                      minWidth: MediaQuery.of(context).size.width,
                      onPressed: () {
                        Navigator.pushNamed(context, '/Home');
                      },
                      child: Text(
                        "Onayla",
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      ),
                    ),
                  )
                : Container(),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: MaterialButton(
                color: Color.fromRGBO(56, 136, 56, 1),
                height: 60,
                minWidth: MediaQuery.of(context).size.width,
                onPressed: () {
                  _timer?.cancel();
                  Navigator.pushNamed(context, '/Home');
                },
                child: Text(
                  "Oylar Bizim Niçin Var?",
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: MaterialButton(
                color: Color.fromRGBO(56, 136, 56, 1),
                height: 60,
                minWidth: MediaQuery.of(context).size.width,
                onPressed: () {
                  Navigator.pushNamed(context, '/Home');
                },
                child: Text(
                  "Oylar Bizim Nasıl Çalışır?",
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Text('@2023 oylarbizim.org'),
            ),
          ],
        ),
      ),
    );
  }

  startTimer() {
    count = 120;
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      print(count);
      if (count == 120) {
        timer.tick;
        count--;
        waiting = true;
        print(count);
      } else if (count == 0) {
        timer.cancel();
        waiting = false;
      } else {
        count--;
        waiting = true;
      }
      setState(() {});
    });
  }

  _textFields(TextEditingController controller, String hintText) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: TextField(
        keyboardType: TextInputType.number,
        controller: controller,
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.phone_android),
            labelText: hintText,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 2),
              borderRadius: BorderRadius.circular(10),
            )),
      ),
    );
  }
}
