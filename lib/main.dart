import 'package:flutter/material.dart';

void main() => runApp(new MyApp());


class MyApp extends StatelessWidget{
  @override
int a=0,b=0,c=102,d=255;
  Widget build(BuildContext context) {

    return new MaterialApp(
      title: "the calculator app testing pr",
      theme: new ThemeData( primarySwatch: Colors.red
      ),

      home: Scaffold(
        appBar: AppBar(
          title: Text('testing',),

        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text("hi man"),
            ],
          ),
        ),
      ),
    );
  }

}
