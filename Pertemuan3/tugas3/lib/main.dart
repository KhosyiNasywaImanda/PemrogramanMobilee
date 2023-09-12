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
                margin: EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey, // Warna border
                    width: 2.0, // Lebar border
                  ),
                ),
                width: 350,
                height: 300,
                child: Column(
                  children: [
                    // Column1
                    Container(
                      width: double.infinity,
                      height: 216,
                      child: Image.network(
                        "https://img.inews.co.id/media/600/files/networks/2022/12/20/4ef74_koleksi-mobil-kylian-mbappe.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Column2 with border
                    Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 35,
                      color: Color.fromARGB(255, 184, 180, 180),
                      child: Text("Mbappe hendak hengkang dari PSG"),
                    ),
                    // Column3
                    Container(
                      alignment: Alignment.centerLeft,
                      width: double.infinity,
                      height: 45,
                       color: Color.fromARGB(255, 212, 211, 211),
                      child: Text("Transfer"),
                    )
                  ],
                ),
              ),


//-------------------------------------------------------------------------------------              
              // Container3
              Container(
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey, // Warna border
                    width: 2.0, // Lebar border
                  ),
                ),
                width: 350,
                height: 180,
                child: Column(
                  children: [
                    // Container1
                    Container(
                      width: double.infinity,
                      height: 135,
                      color: Colors.blue,
                      child: Row(
                        children: [
                          // Container kiri
                          Container(
                            alignment: Alignment.center,
                            width: 172.7,
                            color: Color.fromARGB(255, 108, 106, 117),
                            child: Image.network(
                              "https://static.republika.co.id/uploads/images/inpicture_slide/pemain-manchester-united-cristiano-ronaldo-2-kiri-mendapat-kartu-kuning_211129012556-621.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                          // Container kanan
                          Container(
                            alignment: Alignment.center,
                            width: 172.7,
                            color: Color.fromARGB(255, 175, 175, 179),
                            child: 
                             Padding(
                                padding: EdgeInsets.all(10.0),
                                 child: Text(
                                  "Cristian Ronaldo mendapatkan karu kuning saat kontra lawan Chealsea",
                                  style: TextStyle(fontSize: 15),
                                 ),
                               ),
                          )
                        ],
                      ),
                    ),
                    // Container2
                    Container(
                      alignment: Alignment.centerLeft,
                      width: double.infinity,
                      height: 40,
                      color: Color.fromARGB(255, 209, 214, 218),
                      child: const Text('Old Trafford Mei 12,2023'),
                    )
                  ],
                ),
              ),
              // Container4

 //-------------------------------------------------------             
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey, // Warna border
                    width: 2.0, // Lebar border
                  ),
                ),
                width: 350,
                height: 105,
                child: Row(
                  children: [
                    // Row kiri
                    Container(
                      alignment: Alignment.center,
                      width: 172.7,
                      color: Colors.grey,
                      child: Image.network(
                        "https://thumb.viva.co.id/media/frontend/thumbs3/2023/04/22/6443328e8fedf-pemain-psg-rayakan-gol-kylian-mbappe_1265_711.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Row kanan
                    Container(
                      alignment: Alignment.center,
                      width: 172.7,
                      color: Colors.grey,
                      child:
                      Padding(
                                padding: EdgeInsets.all(10.0),
                                 child: Text(
                                  "Mbappe cetak 2 gol saat kontra lawan chelsea",
                                  style: TextStyle(fontSize: 15),
                                 ),
                               ), 
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
