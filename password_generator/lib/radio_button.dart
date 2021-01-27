import 'package:flutter/material.dart';

enum Difficulty { easy, medium, hard }

class RadioButton extends StatefulWidget {
  @override
  _RadioButtonState createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {

  Difficulty _difficulty = Difficulty.easy;

  /// When radio button change
  void onRadioChange(Difficulty value) {
    setState(() {
      _difficulty = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(
            top: 30.0,
            bottom: 10.0
          ),
          child:
            const Text("Password difficulty",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.green
              ),
            )
        ),
        ListTile(
          title: const Text('Easy'),
          leading: Radio(
            value:  Difficulty.easy,
            groupValue: _difficulty,
            onChanged: this.onRadioChange
          ),
        ),
        ListTile(
          title: const Text('Medium'),
          leading: Radio(
            value:  Difficulty.medium,
            groupValue: _difficulty,
            onChanged: this.onRadioChange,
          ),
        ),
        ListTile(
          title: const Text('Hard'),
          leading: Radio(
            value:  Difficulty.hard,
            groupValue: _difficulty,
            onChanged: this.onRadioChange,
          ),
        )
      ]
    );
  }
}