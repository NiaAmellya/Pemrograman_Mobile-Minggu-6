import 'package:belanja_js6/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      jenis: 'Heels',
      stok: 5,
      merk: 'Gucci',
      price: 4500000,
      warna: 'Gold',
      ukuran: '38-41',
    ),
    Item(
      jenis: 'Sport',
      stok: 20,
      merk: 'Nike',
      price: 200000,
      warna: 'Black',
      ukuran: '38-41',
    ),
    Item(
      jenis: 'Wedges',
      stok: 35,
      merk: 'Fladeo',
      price: 600000,
      warna: 'Green',
      ukuran: '38-41',
    ),
    Item(
      jenis: 'Slip On',
      stok: 25,
      merk: 'Converse',
      price: 450000,
      warna: 'White',
      ukuran: '38-41',
    ),
    Item(
      jenis: 'Pantofel',
      stok: 6,
      merk: 'Zara',
      price: 2000000,
      warna: 'Red',
      ukuran: '38-41',
    ),
    Item(
      jenis: 'Boots',
      stok: 3,
      merk: 'LV',
      price: 10000000,
      warna: 'Brown',
      ukuran: '38-40',
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[200],
        title: Text("Toko Sepatu"),
      ),
      body: Container(
          margin: EdgeInsets.all(8),
          child: GridView.builder(
              padding: EdgeInsets.all(8),
              itemCount: items.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                final item = items[index];
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/item', arguments: item);
                  },
                  child: Card(
                    child: Container(
                      margin: EdgeInsets.all(8),
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          Expanded(child: Text(item.jenis)),

                          //Expanded(
                          //child: Text(
                          //item.stok.toString(),
                          //textAlign: TextAlign.end,
                          //),
                          //)
                        ],
                      ),
                    ),
                  ),
                );
              })), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
