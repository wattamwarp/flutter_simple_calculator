import 'package:flutter/material.dart';
import 'home_page.dart';

void main() => runApp(new MyApp());


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      title: "the calculator app",
      theme: new ThemeData(primarySwatch: Colors.blue),
      home:  new HomePage(),
    );
  }
}
