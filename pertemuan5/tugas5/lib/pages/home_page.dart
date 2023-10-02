import '../models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        image:
            'https://images.tokopedia.net/img/cache/900/VqbcmM/2021/7/15/fe5d77be-d450-4336-acdd-5238e1fc7bbf.jpg',
        name: 'Sugar',
        price: 'Rp 10.000,-',
        quantity: '200 grams'),
    Item(
        image:
            'https://down-id.img.susercontent.com/file/365b47954a249ddc4089b01f0bfe8577',
        name: 'Salt',
        price: 'Rp 5.000,-',
        quantity: '100 grams'),
    Item(
        image:
            'https://down-id.img.susercontent.com/file/9df87320f2c3931d445f9d49aeb11228',
        name: 'Pepper',
        price: 'Rp 2.000,-',
        quantity: '100 grams'),
    Item(
        image:
            'https://down-id.img.susercontent.com/file/8fcda268ebcdc84a60b170583707361e',
        name: 'Coffee',
        price: 'Rp 35.000,-',
        quantity: '1000 grams'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping List'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Items',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Qty',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Harga',
                      textAlign: TextAlign.right,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
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
                            Container(
                              color: Colors.blue,
                              child: Image.network(
                                item.image,
                                width: 20,
                                height: 20,
                                fit: BoxFit.cover, // Ensure the image fills the container
                              ),
                            ),
                            SizedBox(width: 20),
                            Expanded(child: Text(item.name)),
                            Expanded(
                              child: Text(
                                item.quantity,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                item.price,
                                textAlign: TextAlign.right,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
