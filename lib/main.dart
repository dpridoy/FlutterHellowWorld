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

  final myController=TextEditingController();
  final myGlobalController = GlobalKey<FormState>();


  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  void sayHello(){
    if(myGlobalController.currentState.validate()){
      showDialog(context: context,builder: (context){
        return AlertDialog(content: Text(""+myController.text),);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:new Text('Hello World App'),
        ),
        body: Form(key: myGlobalController,
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextFormField(
            // ignore: missing_return
            validator: (value){
              if(value.isEmpty) return 'Please insert';
            },
            controller: myController,
            decoration: InputDecoration(hintText: "Enter something"),

          ),
          Padding(padding: const EdgeInsets.symmetric(vertical: 16.0), child:
          RaisedButton(onPressed: sayHello,child: Text("Say Hi!"),),),
        ],),)
    );
  }

}