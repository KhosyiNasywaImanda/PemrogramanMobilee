import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("MyApp"),
          backgroundColor: Colors.red,
        ),
        body: Container(
          child: Column(
            children: [
              // Container1
              Container(
                color: Color.fromARGB(255, 223, 223, 223),
                width: double.infinity,
                height: 60,
                child: Row(
                  children: [
                    // Row1
                    Container(
                      color: Color.fromARGB(255, 235, 240, 238),
                      alignment: Alignment.center,
                      width: 180,
                      child: TextButton(
                        onPressed:
                            () {}, // Fungsi yang akan dijalankan saat tombol ditekan
                        child: Text(
                          "BERITA TERBARU", // Perbaiki tanda kutip di sini
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                             color: Colors.black
                          ),
                        ),
                      ),
                    ),
                    // Row2
                    Container(
                      color: Color.fromARGB(255, 235, 240, 238),
                      alignment: Alignment.center,
                      width: 180,
                      child: TextButton(
                        onPressed:
                            () {}, // Fungsi yang akan dijalankan saat tombol ditekan
                        child: Text(
                          "PERTANDINGAN HARI INI", // Perbaiki tanda kutip di sini
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
//------------------------------------------------------------------------------------------------------------------------
              // Container2
              Container(
                color: Color.fromARGB(255, 225, 142, 240),
                width: double.infinity,
                height: 300,
                child: Column(
                  children: [
                    // Column1
                    Container(
                      width: double.infinity,
                      height: 210,
                      child: Image.network(
                        "https://img.inews.co.id/media/600/files/networks/2022/12/20/4ef74_koleksi-mobil-kylian-mbappe.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Column2 with border
                    Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 40,
                      color: Color.fromARGB(255, 235, 240, 238),
                      child: Text("Mbappe hendak hengkang dari PSG"),
                    ),
                    // Column3
                    Container(
                      alignment: Alignment.centerLeft,
                      width: double.infinity,
                      height: 50,
                       color: Color.fromARGB(255, 225, 142, 240),
                      child: Text("Transfer"),
                    )
                  ],
                ),
              ),


//-------------------------------------------------------------------------------------              
              // Container3
              Container(
                color: Color.fromARGB(255, 101, 106, 167),
                width: double.infinity,
                height: 180,
                child: Column(
                  children: [
                    // Container1
                    Container(
                      width: double.infinity,
                      height: 130,
                      color: Colors.blue,
                      child: Row(
                        children: [
                          // Container kiri
                          Container(
                            alignment: Alignment.center,
                            width: 180,
                            color: Color.fromARGB(255, 108, 106, 117),
                            child: Image.network(
                              "https://img.inews.co.id/media/600/files/networks/2022/12/20/4ef74_koleksi-mobil-kylian-mbappe.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                          // Container kanan
                          Container(
                            alignment: Alignment.center,
                            width: 180,
                            color: Color.fromARGB(255, 175, 175, 179),
                            child: const Text('tulisan kanan'),
                          )
                        ],
                      ),
                    ),
                    // Container2
                    Container(
                      alignment: Alignment.centerLeft,
                      width: double.infinity,
                      height: 50,
                      color: Color.fromARGB(255, 209, 214, 218),
                      child: const Text('tulisan bawah'),
                    )
                  ],
                ),
              ),
              // Container4

 //-------------------------------------------------------             
              Container(
                color: Color.fromARGB(255, 238, 16, 0),
                width: double.infinity,
                height: 100,
                child: Row(
                  children: [
                    // Row kiri
                    Container(
                      alignment: Alignment.center,
                      width: 180,
                      color: Color.fromARGB(255, 89, 70, 173),
                      child: Image.network(
                        "https://img.inews.co.id/media/600/files/networks/2022/12/20/4ef74_koleksi-mobil-kylian-mbappe.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Row kanan
                    Container(
                      alignment: Alignment.center,
                      width: 180,
                      color: Color.fromARGB(255, 117, 92, 226),
                      child: const Text('Tulisannn'),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
