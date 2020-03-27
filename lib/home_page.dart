import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new homepagestate();
}

class homepagestate extends State<HomePage> {

  var num1=0,num2=0,sum=0;

   TextEditingController t1=new TextEditingController(text:"0");
   TextEditingController t2=new TextEditingController(text:"0");

  void doaddition(){
    setState(() {
      num1= int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num2+num1;

    });

  }
  void dosub(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num2-num1;
    });

  }

  void domul(){
    setState(() {

      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num2*num1;

    });
  }

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
        appBar: new AppBar(
          title: new Text('calculator'),
        ),

      body: new Container(

        padding:  const EdgeInsets.all(20.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text("Output : $sum",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold
                ),
              ),
              new TextField(
               keyboardType: TextInputType.number,
                decoration: new InputDecoration(hintText: "enter first number " ),
                controller: t1,

              ),
              new TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(hintText: "enter second number " ),
                controller: t2,

              ),
              new Padding(
                padding: const EdgeInsets.only(top: 20.0),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                    new RaisedButton(
                        child: new Text("Add"),
                        color: Colors.indigoAccent,
                        elevation: 6.0,
                        onPressed: doaddition
                        ),
                  new RaisedButton(
                      child: new Text("Sub"),
                      color: Colors.indigoAccent,
                      elevation: 6.0,
                      onPressed: dosub
                  ),

                  new RaisedButton(
                      child: new Text("Mul"),
                      color: Colors.indigoAccent,
                      elevation: 60.0,
                      onPressed: (){
                        setState(() {

                          num1=int.parse(t1.text);
                          num2=int.parse(t2.text);
                          sum=num2*num1;

                        });
                      }
                  ),
                  new RaisedButton(
                      child: new Text("Div"),
                      color: Colors.indigoAccent,
                      elevation: 6.0,
                      onPressed: (){
                        setState(() {
                          num1=int.parse(t1.text);
                          num2=int.parse(t2.text);
                          sum=num1 ~/ num2;

                        });

                      }
                  )


                ],
              )

            ],
          ),
          ),
        ),
      );


  }
}

