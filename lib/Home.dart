import 'package:flutter/material.dart';
import 'package:secim_bilgisi/Profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int secilenIndeks = 0;
  GlobalKey scfldkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scfldkey,
      endDrawer: Drawer(
        backgroundColor: Color.fromRGBO(25, 40, 65, 1),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(height: 100),
            Align(
              alignment: Alignment.centerRight,
              child: MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.close, color: Colors.white),
              ),
            ),
            Divider(color: Colors.black),
            ListTile(
              title: Text(
                "Profilim",
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
              onTap: () {
                setState(() {
                  secilenIndeks = 0;
                });
                Navigator.pushNamed(
                    context, "/Profile"); //seçilinde drawerı kapatmak için
              },
            ),
            Divider(color: Colors.black),
            ListTile(
              title: Text(
                "Gönüllü Sandıklarım",
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
              onTap: () {
                setState(() {
                  secilenIndeks = 1;
                });
                Navigator.pop(context); //seçilinde drawerı kapatmak için
              },
            ),
            Divider(color: Colors.black),
            ListTile(
              title: Text(
                "Yüklediğim Sandıklar",
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
              onTap: () {
                setState(() {
                  secilenIndeks = 2;
                });
                Navigator.pop(context); //seçilinde drawerı kapatmak için
              },
            ),
            Divider(color: Colors.black),
            ListTile(
              title: Text(
                "Çıkış Yap",
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
              onTap: () {
                setState(() {
                  secilenIndeks = 1;
                });
                Navigator.pop(context); //seçilinde drawerı kapatmak için
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        leading: Text('data'),
        leadingWidth: 100,
        actions: [
          Icon(Icons.notifications),
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openEndDrawer();
            },
          ),
        ],

        /*actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: PopupMenuButton(
              offset: Offset(0, 60),
              icon: Icon(Icons.menu, color: Colors.white),
              itemBuilder: (context) => <PopupMenuEntry>[
                PopupMenuItem(
                  value: 0,
                  child: TextButton(
                    child: Text('Profilim'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/Profile');
                    },
                  ),
                ),
                PopupMenuItem(
                  value: 1,
                  child: TextButton(
                    child: Text('Yüklemelerim'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/Uploaded');
                    },
                  ),
                ),
              ],
            ),
          )
        ],*/
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: MaterialButton(
                color: Color.fromRGBO(25, 40, 65, 1),
                height: 60,
                minWidth: MediaQuery.of(context).size.width,
                onPressed: () {
                  Navigator.pushNamed(context, '/AddTutanak');
                },
                child: Text(
                  "Tutanak Giriş",
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: MaterialButton(
                color: Color.fromRGBO(25, 40, 65, 1),
                height: 60,
                minWidth: MediaQuery.of(context).size.width,
                onPressed: () {
                  Navigator.pushNamed(context, '/AddSecmenListesi');
                },
                child: Text(
                  "Seçmen Listesi Giriş",
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: MaterialButton(
                color: Color.fromRGBO(35, 57, 93, 1),
                height: 60,
                minWidth: MediaQuery.of(context).size.width,
                onPressed: () {
                  Navigator.pushNamed(context, '/Home');
                },
                child: Text(
                  "Sandık Sahiplen",
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: MaterialButton(
                color: Color.fromRGBO(35, 57, 93, 1),
                height: 60,
                minWidth: MediaQuery.of(context).size.width,
                onPressed: () {
                  Navigator.pushNamed(context, '/Home');
                },
                child: Text(
                  "Yardım Talebi",
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
