import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World App',
      home: ClickMeApp()
    );
  }
}

class ClickMeApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>ChangeText();

}

class ChangeText extends State<ClickMeApp>{

  String defaultText= "Click me!!";
  int i=0;

  void changeText(){

    setState(() {
      if(i%2==0)
        defaultText="You Clicked!!";
      else
        defaultText="Click me!!";
      i++;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:new Text('Hello World App'),
      ),
      body: Center(child:new Text(defaultText, style: new TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.blue),
      ),),
    floatingActionButton: FloatingActionButton(onPressed: changeText,
      tooltip: 'Click Me',
      child: Icon(Icons.mouse),),);
  }

}