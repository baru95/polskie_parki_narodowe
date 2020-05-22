import 'package:flutter/material.dart';

class LoginPanel extends StatelessWidget {
  final Icon fieldIcon;
  final String hintText;
  final bool _obscureText; //ukrywanie hasła


  LoginPanel(
    this.fieldIcon,
    this.hintText,
    this._obscureText,

  );

  Widget _loginIcon() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: fieldIcon,
    );
  }

  Widget _textField() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0)),
      ),
      width: 200,
      height: 60,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(

          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              fillColor: Colors.white,
              filled: true),
          style: TextStyle(fontSize: 20.0, color: Colors.black),
          obscureText: _obscureText, //ukrywanie hasła
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Material(
          elevation: 5.0,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.green[900],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _loginIcon(),
              _textField(),
            ],
          )),
    );
  }
}
