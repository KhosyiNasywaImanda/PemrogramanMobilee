import '../models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Sugar', price: 5000, quantity: '200 gram'),
    Item(name: 'Salt', price: 2000, quantity: '100 gram'),
    Item(name: 'Pepper', price: 1000, quantity: '100 gram'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item Details'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Card(
                  child: Container(
                      margin: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Expanded(child: Text(item.name)),
                          Expanded(
                              child: Text(
                            item.price.toString(),
                            textAlign: TextAlign.center,
                          )),
                          Expanded(
                              child: Text(
                            item.quantity,
                            textAlign: TextAlign.right,
                          )),
                        ],
                      ))),
            );
          },
        ),
      ),
    );

    throw UnimplementedError();
  }
}
