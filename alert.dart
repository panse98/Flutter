import 'package:flutter/material.dart';

class Alert_Func extends StatelessWidget {
  final String button_text;
  final String alert_title;
  final String alert_content;
  final String response_one;
  final String response_two;


  Alert_Func ({this.button_text, this.alert_title, this.alert_content, this.response_one, this.response_two});

  @override
  Widget build(BuildContext context) {

    return Center(
          child: RaisedButton(
          child: Text(button_text),
    onPressed: () {
    showDialog<void>(
    context: context,
    builder: (BuildContext context) {
    return AlertDialog(
    title: Text(alert_title),
    content: Text(alert_content),
    actions: <Widget>[
    FlatButton(
    child: Text(response_one),
    onPressed: () {
    Navigator.of(context).pop();
    },
    ),
    FlatButton(
    child: Text(response_two),
    onPressed: () {
    Navigator.of(context).pop();
    },
    )
    ],
    );

    }


    );
    },
    )
    );
  }
}