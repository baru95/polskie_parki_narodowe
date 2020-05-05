import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhase {
    String resultText = 'Twój wynik: $resultScore/10';
    // if (resultScore < 3) {
    //   resultText = 'Jest bardzo źle!';
    // } else if (resultScore <= 5) {
    //   resultText = 'Nie jest najgorzej!';
    // } else if (resultScore <= 8) {
    //   resultText = 'Dobry wynik!';
    // } else {
    //   resultText = 'Gratulacje!';
    // }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'Podziel się swoim wynikiem!',
            ),
            textColor: Colors.green,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
