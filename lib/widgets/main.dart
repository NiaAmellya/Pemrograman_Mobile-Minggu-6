import 'package:belanja_js6/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:belanja_js6/pages/item_page.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/item': (context) => ItemPage(),
    },
  ));
}
