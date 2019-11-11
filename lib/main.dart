import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello World App'),
        ),
        body: Center(child: Text('Hello World', style: new TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.blue
        ),),),
      ),
    );
  }
}

