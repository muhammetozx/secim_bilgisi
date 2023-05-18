import 'package:flutter/material.dart';
import 'package:secim_bilgisi/Widgets/Consts/DecConsts.dart';

class Uploaded extends StatefulWidget {
  const Uploaded({super.key});

  @override
  State<Uploaded> createState() => _UploadedState();
}

class _UploadedState extends State<Uploaded> {
  final List<String> entries = <String>['A', 'B', 'C'];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Generalboxshadowdecoration,
      child: ListView.builder(
        padding: EdgeInsets.all(8.0),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              print('object');
            },
            child: SizedBox(
              height: screenHeight/19,
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: screenWidth/50),
                    Text('İl / İlçe / Okul / Sandık No'),
                    Spacer(),
                    Icon(Icons.keyboard_arrow_right_outlined),
                    SizedBox(width: screenWidth/50),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
