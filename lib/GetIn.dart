import 'package:flutter/material.dart';
import 'package:telephony/telephony.dart';

class GetIn extends StatefulWidget {
  const GetIn({super.key});

  @override
  State<GetIn> createState() => _GetInState();
}

class _GetInState extends State<GetIn> {
  List<TextEditingController> _controllers =
      List.generate(2, (index) => TextEditingController());
  Telephony telephony = Telephony.instance;
  bool isPhoneCorrect = false;

  @override
  void initState() {
    telephony.listenIncomingSms(
      onNewMessage: (SmsMessage message) {
        print(message.address); //+977981******67, sender nubmer
        print(message.body); //sms text
        print(message.date); //1659690242000, timestamp
      },
      listenInBackground: true,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(),
          ),
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
            child: Container(),
          ),
          Expanded(
            flex: 1,
            child: MaterialButton(
              color: Colors.redAccent.shade400,
              minWidth: 300,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'Sonuç Yükle/Değiştir',
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                if (isPhoneCorrect) {}
              },
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
