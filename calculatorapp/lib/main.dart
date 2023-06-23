// import 'package:calculatorapp/components/display.dart';
import 'package:flutter/material.dart';
import './calculator.dart';

void  main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora',
      home: Column(
        children: <Widget>[
          Calculator(),
          // Display("132.123"),

        ],
      )
    );
  }
}