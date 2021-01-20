import 'package:flutter/material.dart';
import 'textFieldSize.dart';
import 'buttonGenerate.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  int passwordSize;

  /// Parse and init password size attribute
  void getSize(String size) {
    setState(() {
      this.passwordSize = int.parse(size);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Password generator")),
      body: Container(
        margin: const EdgeInsets.only(top: 30.0),
        child: Column(
          children: <Widget>[
            Text("Generate a password", 
              style: TextStyle(
                fontSize: 25.0, 
                fontWeight: FontWeight.normal
              ),
            ),
            Container(
              margin: const EdgeInsets.all(30.0),
              child: Column(
                children: <Widget>[
                  TextFieldSize(this.getSize),
                  ButtonGenerate(this.passwordSize)
                ],
              )
            ),
          ] 
        )
      )
    );
  }
}