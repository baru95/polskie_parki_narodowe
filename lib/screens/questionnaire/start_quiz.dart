import 'package:flutter/material.dart';
import 'package:polskie_parki_narodowe/shared/main_button.dart';

class StartQuiz extends StatelessWidget {
  final String _pictureStartQuiz;
  final Function _startQuizButton;
  StartQuiz(this._pictureStartQuiz, this._startQuizButton);

  @override
  Widget build(BuildContext context) {
    return  Container(
        height: (MediaQuery.of(context).size.height -
                MediaQuery.of(context).padding.top) *
            0.8,
        
        color: Theme.of(context).backgroundColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Card(
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        'Sprawdź swoją wiedzę na temat ochrony środowiska!',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 1.5
                            ..color = Colors.black,
                        ),
                      ),
                    ),
                    Container(
                        width: 350,
                        height: 200,
                        child: Image.network(_pictureStartQuiz)),
                  ],
                ),
              ),
              MainButton(
                buttonName: 'Więcej',
                buttonAction: _startQuizButton,
              ),
            ],
          ),
        ),
     
    );
  }
}
