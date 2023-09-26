import 'package:flutter/material.dart';
import 'package:pertemuan5/models/item.dart';

class ItemPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final Item itemArgs = ModalRoute.of(context)!.settings.arguments as Item ;
    
      return Scaffold(
        appBar: AppBar(
          title: Text('Shopping List'),
        ),
        body: Center(
       //   margin: EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children : [
              Container(
                child: Text(itemArgs.name + " with " + (itemArgs.price.toString()),
              ),
              )
            ]
  
              // Text(itemArgs.name),
              // Text('with' ),
              // Text(itemArgs.price.toString())
              )
    
          ),
        );
 

   
  }
}