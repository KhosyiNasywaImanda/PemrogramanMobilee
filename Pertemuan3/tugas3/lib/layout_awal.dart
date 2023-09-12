import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("MyApp"), 
            backgroundColor: Colors.red),
           
          body: Container(
            child: Column(
              children : [
                //Container1
                Container(
                  color:Color.fromARGB(255, 223, 223, 223),
                  width: double.infinity,
                  height: 60,

                ),
                //Container2
                Container(
                  color:Color.fromARGB(255, 225, 142, 240),
                  width: double.infinity,
                  height: 300,

                ),
                //Container3
                Container(
                  color:Color.fromARGB(255, 101, 106, 167),
                  width: double.infinity,
                  height: 200,

                ),
                //Container4
                Container(
                  color:Color.fromARGB(255, 238, 16, 0),
                  width: double.infinity,
                  height: 100,
                  
                )
                



              ]

              )
            )



          ),

     );
    

  }
}