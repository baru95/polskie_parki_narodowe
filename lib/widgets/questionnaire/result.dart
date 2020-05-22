import 'package:flutter/material.dart';

import '../main_button.dart';

class Result extends StatefulWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  String get resultPhase {
    String resultText = 'Twój wynik: ${widget.resultScore}/10';

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                width: 350,
                height: 200,
                child: Image.network(_endQuizPictures)),
            Text(
              resultPhase,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            MainButton(
              buttonName: 'Prześlij wynik!',
              buttonAction: widget.resetHandler,
            ),
          ],
        ),
      ),
    );
  }

  String _endQuizPictures =
      'https://i.pinimg.com/236x/ba/ee/7d/baee7d789ce0a5724025683d7eb99ce1--birthday-messages-birthday-images.jpg';
}
