import 'package:belanja_js6/models/item.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Item itemArgs = ModalRoute.of(context).settings.arguments;
    return Scaffold(
        appBar: AppBar(
          title: Text("Shopping List"),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Text(itemArgs.name + " ; " + itemArgs.price.toString()),
        ));
  }
}
