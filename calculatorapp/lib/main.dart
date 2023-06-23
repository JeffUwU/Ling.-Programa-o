import 'package:calculatorapp/components/display.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void  main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora',
      home: Scaffold(
        appBar: AppBar(
          title: Text('CALCULADORA'),
          elevation: 50,
          centerTitle: true,
          toolbarHeight: 40,
          backgroundColor: Color(0xFF00BFFF),
          leading: IconButton(
            icon: Icon(Icons.reply),
            onPressed: (){
              SystemNavigator.pop();
            },
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.black, Color(0xFF0F0F0F)],
            ),
          ),
          child: Column(
            children: <Widget>[
              Display("132.123"),
            ],
          )
        ),
      ),
    );
  }
}
