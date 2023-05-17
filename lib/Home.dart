import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 250,
              height: 50,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/AddTutanak');
                },
                child: Text("TUTANAK GİR"),
                style: OutlinedButton.styleFrom(
                  shape: StadiumBorder(),
                ),
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              width: 250,
              height: 50,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/AddSecmenListesi');
                },
                child: Text("SEÇMEN LİSTESİ GİR"),
                style: OutlinedButton.styleFrom(
                  shape: StadiumBorder(),
                ),
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              width: 250,
              height: 50,
              child: OutlinedButton(
                onPressed: () {},
                child: Text("WEB PANEL"),
                style: OutlinedButton.styleFrom(
                  shape: StadiumBorder(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
