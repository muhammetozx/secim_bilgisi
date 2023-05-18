import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:secim_bilgisi/Widgets/Consts/DecConsts.dart';

class AddSecmenListesiImage extends StatefulWidget {
  String il;
  String ilce;
  String mahalle;
  String okul;
  AddSecmenListesiImage(
      {required this.il,
      required this.ilce,
      required this.mahalle,
      required this.okul,
      Key? key})
      : super(key: key);

  @override
  State<AddSecmenListesiImage> createState() => _AddSecmenListesiImageState();
}

class _AddSecmenListesiImageState extends State<AddSecmenListesiImage> {
  String selectedImagePath = '';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: Generalboxshadowdecoration,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                selectImage();
                setState(() {});
              },
              child: selectedImagePath == ''
                  ? SizedBox(
                      height: screenHeight / 9,
                      width: screenWidth / 5,
                      child: Image.network(
                          'https://static.thenounproject.com/png/254260-200.png'),
                    )
                  : Image.file(
                      File(selectedImagePath),
                      height: screenHeight / 9,
                      width: screenWidth / 5,
                      fit: BoxFit.fill,
                    ),
            ),
            SizedBox(height: screenHeight / 90),
            Text(
              'Seçmen Listesi Yüklemek İçin Tıklayınız.',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            SizedBox(height: screenHeight / 90),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: MaterialButton(
                color: Color.fromRGBO(25, 40, 65, 1),
                height: screenHeight / 15,
                minWidth: MediaQuery.of(context).size.width,
                onPressed: () {
                  //
                },
                child: Text(
                  "İlerle",
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: screenHeight / 150),
          ],
        ),
      ),
    );
  }

  Future selectImage() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)), //this right here
            child: Container(
              height: screenHeight / 7,
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
