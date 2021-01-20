import 'package:flutter/material.dart';
import 'dart:math';

class ButtonGenerate extends StatefulWidget {

  final int passwordSize;

  ButtonGenerate(this.passwordSize);

  @override
  _ButtonGenerateState createState() => _ButtonGenerateState();
}

class _ButtonGenerateState extends State<ButtonGenerate> {

  String availableChars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz !#\$%&'()*+,-./:;<=>?@[\\]^_`{|}~";
  String generated = "";

  /// Event when button generate is clicked
  void click() {

    Random random = new Random();
    String created = "";
    int index;

    if (widget.passwordSize > 128) return;

    for (int i = 0; i < widget.passwordSize; i++) {
      index = random.nextInt(this.availableChars.length);  
      created += this.availableChars[index];
    }

    /// refresh text
    setState(() {
      this.generated = created;
    });
  }

  /// refresh widget
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        FlatButton.icon(
          icon: Icon(Icons.security), 
          splashColor: Colors.green,
          onPressed: this.click,
          label: Text("Generate"),
        ),
        Container(
          margin: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              SelectableText(this.generated,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0
                )
              )
            ],
          ),
        )
      ]
    );
  }
}