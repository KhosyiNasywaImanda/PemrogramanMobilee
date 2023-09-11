import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Contoh GridView Widget"),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              color: Colors.green,
              alignment: Alignment.center,
              child: Text("1", style: TextStyle(fontSize: 30, color: Colors.white)),
            ),
            Container(
              color: Colors.red,
              alignment: Alignment.center,
              child: Text("2", style: TextStyle(fontSize: 30, color: Colors.white)),
              height: 200.0, // Ubah tinggi sesuai kebutuhan Anda
              width: 200.0,  // Ubah lebar sesuai kebutuhan Anda
            ),
            Container(
              color: Colors.deepPurple,
              alignment: Alignment.center,
              child: Text("3", style: TextStyle(fontSize: 30, color: Colors.white)),
              height: 200.0, // Ubah tinggi sesuai kebutuhan Anda
              width: 200.0,  // Ubah lebar sesuai kebutuhan Anda
            ),
            Container(
              color: Colors.blueGrey,
              alignment: Alignment.center,
              child: Text("4", style: TextStyle(fontSize: 30, color: Colors.white)),
              height: 200.0, // Ubah tinggi sesuai kebutuhan Anda
              width: 200.0,  // Ubah lebar sesuai kebutuhan Anda
            ),
            Container(
              color: Colors.cyan, // Ubah warna ke Colors.cyan
              alignment: Alignment.center,
              child: Text("5", style: TextStyle(fontSize: 30, color: Colors.white)),
              height: 200.0, // Ubah tinggi sesuai kebutuhan Anda
              width: 200.0,  // Ubah lebar sesuai kebutuhan Anda
            ),
            Container(
              color: Colors.yellow, // Ubah warna ke Colors.yellow
              alignment: Alignment.center,
              child: Text("6", style: TextStyle(fontSize: 30, color: Colors.white)),
              height: 200.0, // Ubah tinggi sesuai kebutuhan Anda
              width: 200.0,  // Ubah lebar sesuai kebutuhan Anda
            ),
          ],
        ),
      ),
    );
  }
}
