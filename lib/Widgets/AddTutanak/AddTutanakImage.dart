import 'dart:io';
import 'dart:typed_data';

import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:secim_bilgisi/Widgets/Consts/DecConsts.dart';
import 'package:secim_bilgisi/Widgets/Consts/Widgets.dart';
import 'package:secim_bilgisi/Widgets/Home/Home.dart';

class AddTutanakImage extends StatefulWidget {
  const AddTutanakImage({Key? key}) : super(key: key);

  @override
  State<AddTutanakImage> createState() => _AddTutanakImageState();
}

class _AddTutanakImageState extends State<AddTutanakImage> {
  TextEditingController rteController = TextEditingController();
  TextEditingController kkController = TextEditingController();
  TextEditingController sandikNoController = TextEditingController();
  String selectedImagePath = '';
  bool openImage = false;
  bool hasImage = false;
  String sendVerify = 'Doğrula';

  @override
  Widget build(BuildContext context) {
    print(openImage);
    print(hasImage);
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width / 10,
                0, MediaQuery.of(context).size.width / 10, 0),
            child: Container(
              height: screenHeight / 11,
              decoration: Generalboxshadowdecoration,
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: CustomDropdown.search(
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
              ),
            ),
          ),
          Container(
            height: screenHeight / 40,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              openImage && hasImage
                  ? Image.file(
                      File(selectedImagePath),
                      height: screenHeight / 9,
                      width: screenWidth / 5,
                      fit: BoxFit.fill,
                    )
                  : Container(),
              SizedBox(height: screenHeight / 90),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 50, 10),
                child: Container(
                  decoration:
                      BoxDecoration(color: Color.fromRGBO(223, 129, 3, 1)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: screenHeight / 16,
                        width: screenWidth / 8,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/rte.jpg'),
                        ),
                      ),
                      Text(
                        'Recep Tayyip Erdoğan',
                        style: TextStyle(fontSize: 20),
                      ),
                      Spacer(),
                      Container(
                        width: screenWidth / 6,
                        child: TextField(
                          onChanged: (value) {},
                          controller: rteController,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              labelText: "OY",
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black, width: 2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black, width: 2),
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenHeight / 150),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 50, 10),
                child: Container(
                  decoration:
                      BoxDecoration(color: Color.fromRGBO(228, 1, 10, 1)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: screenHeight / 16,
                        width: screenWidth / 8,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/kk.jpg'),
                        ),
                      ),
                      Text(
                        'Kemal Kılıçdaroğlu',
                        style: TextStyle(fontSize: 20),
                      ),
                      Spacer(),
                      Container(
                        width: screenWidth / 6,
                        child: TextField(
                          onChanged: (value) {},
                          controller: kkController,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              labelText: "OY",
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black, width: 2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black, width: 2),
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenHeight / 90),
              Container(
                decoration: Generalboxshadowdecoration,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: MaterialButton(
                    color: Color.fromRGBO(25, 40, 65, 1),
                    height: screenHeight / 15,
                    minWidth: MediaQuery.of(context).size.width,
                    onPressed: () {
                      print('changed Complete');
                      _textEditingControl();
                      if (openImage) sendVerify = 'Gönder';
                    },
                    child: Text(
                      sendVerify,
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                  ),
                ),
              ),
              openImage
                  ? Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: MaterialButton(
                        color: Color.fromRGBO(25, 40, 65, 1),
                        height: screenHeight / 15,
                        minWidth: MediaQuery.of(context).size.width,
                        onPressed: () {
                          selectImage();
                        },
                        child: Text(
                          "Tutanağı Yükle",
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                      ),
                    )
                  : Container(),
              openImage
                  ? Padding(
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
                          "Ana Sayfa",
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                      ),
                    )
                  : Container(),
              SizedBox(height: screenHeight / 150),
            ],
          ),
        ],
      ),
    );
  }

  _textEditingControl() {
    if (rteController.text.isNotEmpty && kkController.text.isNotEmpty) {
      openImage = true;
    } else {
      openImage = false;
    }
    setState(() {});
  }

  Future selectImage() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)), //this right here
            child: Container(
              height: screenHeight / 12,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Text(
                      'Yüklemek istediğiniz yeri seçiniz',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: screenHeight / 150),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () async {
                            selectedImagePath = await selectImageFromGallery();
                            print('Image_Path:-');
                            print(selectedImagePath);
                            if (selectedImagePath != '') {
                              hasImage = true;
                              Navigator.pop(context);
                              setState(() {});
                            } else {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text("Seçilen Resim Yok !"),
                              ));
                            }
                          },
                          child: Card(
                              elevation: 5,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Icon(Icons.file_copy),
                                    Text('Galeri'),
                                  ],
                                ),
                              )),
                        ),
                        GestureDetector(
                          onTap: () async {
                            selectedImagePath = await selectImageFromCamera();
                            print('Image_Path:-');
                            print(selectedImagePath);

                            if (selectedImagePath != '') {
                              hasImage = true;
                              Navigator.pop(context);
                              setState(() {});
                            } else {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text("Çekilen Fotoğraf Yok !"),
                              ));
                            }
                          },
                          child: Card(
                              elevation: 5,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Icon(Icons.camera),
                                    Text('Kamera'),
                                  ],
                                ),
                              )),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }

  selectImageFromGallery() async {
    XFile? file = await ImagePicker()
        .pickImage(source: ImageSource.gallery, imageQuality: 10);
    if (file != null) {
      return file.path;
    } else {
      return '';
    }
  }

  //
  selectImageFromCamera() async {
    XFile? file = await ImagePicker()
        .pickImage(source: ImageSource.camera, imageQuality: 10);
    if (file != null) {
      return file.path;
    } else {
      return '';
    }
  }
}
