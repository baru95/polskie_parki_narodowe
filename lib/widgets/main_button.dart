import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String buttonName;
  final Function buttonAction;

  MainButton({@required this.buttonName, @required this.buttonAction});

  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      child: Text(buttonName),
      elevation: 5.0,
      color: Theme.of(context).accentColor,
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(10.0),
        side: BorderSide(color: Colors.black),
      ),
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      onPressed: buttonAction,
    );
  }
}
