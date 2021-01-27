import 'package:flutter/material.dart';
import 'text_field_size.dart';
import 'button_generate.dart';
import 'radio_button.dart';

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
      appBar: AppBar(
        title: Text("Password generator")
      ),
      body: Container(
        margin: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              TextFieldSize(this.getSize),
              RadioButton(),
              ButtonGenerate(this.passwordSize),
            ],
          )
      ) 
    );
  }
}