import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddSecmenListesiImage extends StatefulWidget {
  const AddSecmenListesiImage({Key? key}) : super(key: key);

  @override
  State<AddSecmenListesiImage> createState() => _AddSecmenListesiImageState();
}

class _AddSecmenListesiImageState extends State<AddSecmenListesiImage> {
  String selectedImagePath = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
                      height: 200,
                      width: 200,
                      child: Image.network(
                          'https://static.thenounproject.com/png/254260-200.png'),
                    )
                  : Image.file(
                      File(selectedImagePath),
                      height: 200,
                      width: 200,
                      fit: BoxFit.fill,
                    ),
            ),
            SizedBox(height: 20),
            Text(
              'Seçmen Listesi Yüklemek İçin Tıklayınız.',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 250,
              height: 50,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.popUntil(context, ModalRoute.withName('/Home'));
                },
                child: Text("KAYDET"),
                style: OutlinedButton.styleFrom(
                  shape: StadiumBorder(),
                ),
              ),
            ),
            const SizedBox(height: 10),
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
              height: 150,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Text(
                      'Yüklemek istediğiniz yeri seçiniz',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
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
