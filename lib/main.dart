import 'package:fashion_heroes/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: <String, WidgetBuilder>{
      '/': (BuildContext context) => const HomePage(),
    },
  ));
}
