import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddTutanakImage extends StatefulWidget {
  const AddTutanakImage({Key? key}) : super(key: key);

  @override
  State<AddTutanakImage> createState() => _AddTutanakImageState();
}

class _AddTutanakImageState extends State<AddTutanakImage> {
  TextEditingController rteController = TextEditingController();
  TextEditingController kkController = TextEditingController();
  String selectedImagePath = '';
  bool openImage = false;
  bool hasImage = false;

  @override
  Widget build(BuildContext context) {
    print(openImage);
    print(hasImage);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            openImage && hasImage
                ? Image.file(
                    File(selectedImagePath),
                    height: 200,
                    width: 200,
                    fit: BoxFit.fill,
                  )
                : Container(),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 0, 50, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                    width: 50,
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
                    width: 60,
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
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 0, 50, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                    width: 50,
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
                    width: 60,
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
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: MaterialButton(
                color: Color.fromRGBO(25, 40, 65, 1),
                height: 60,
                minWidth: MediaQuery.of(context).size.width,
                onPressed: () {
                  print('changed Complete');
                  _textEditingControl();
                },
                child: Text(
                  "Gönder",
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
              ),
            ),
            openImage
                ? Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: MaterialButton(
                      color: Color.fromRGBO(25, 40, 65, 1),
                      height: 60,
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
                      height: 60,
                      minWidth: MediaQuery.of(context).size.width,
                      onPressed: () {
                        Navigator.popUntil(
                            context, ModalRoute.withName('/Home'));
                      },
                      child: Text(
                        "Ana Sayfa",
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      ),
                    ),
                  )
                : Container(),
            const SizedBox(height: 10),
          ],
        ),
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
