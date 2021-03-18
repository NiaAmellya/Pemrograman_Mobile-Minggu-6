import 'package:belanja_js6/models/item.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Item itemArgs = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[200],
        title: Text("Toko Sepatu"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: <DataColumn>[
            DataColumn(label: Text("Merk")),
            DataColumn(label: Text("Harga")),
            DataColumn(label: Text("Warna")),
            DataColumn(label: Text("Ukuran")),
          ],
          rows: <DataRow>[
            DataRow(
              cells: <DataCell>[
                DataCell(Text(itemArgs.merk)),
                DataCell(Text(itemArgs.price.toString())),
                DataCell(Text(itemArgs.warna)),
                DataCell(Text(itemArgs.ukuran)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
