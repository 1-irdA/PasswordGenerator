import 'package:flutter/material.dart';
import 'dart:math';

const MAX_LENGTH = 64;

class ButtonGenerate extends StatefulWidget {

  final int passwordSize;
  ButtonGenerate(this.passwordSize);

  @override
  _ButtonGenerateState createState() => _ButtonGenerateState();
}

class _ButtonGenerateState extends State<ButtonGenerate> {

  String availableChars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!#\$%&'()*+,-./:;<=>?@[\\]^_`{|}~";
  String generated = "";

  /// Event when button generate is clicked
  void click() {

    Random random = new Random();
    String created = "";
    int index;

    if (widget.passwordSize > MAX_LENGTH) return;

    for (int i = 0; i < widget.passwordSize; i++) {
      index = random.nextInt(this.availableChars.length);  
      created += this.availableChars[index];
    }

    /// refresh text
    setState(() {
      this.generated = created;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        FlatButton.icon(
          icon: Icon(Icons.security), 
          splashColor: Colors.green,
          onPressed: this.click,
          label: Text("Generate", 
            style: TextStyle(
              fontSize: 20.0
            ),
          ),
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