
import 'package:flutter/material.dart';
import 'pages/item_page.dart';
import 'pages/home_page.dart';
import 'package:tugas5/models/item.dart';

// Define the main function
void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/':(context) => HomePage(),
      '/item' :(context) => ItemPage(),
    },

    
  ));
}


 
 
  
  

