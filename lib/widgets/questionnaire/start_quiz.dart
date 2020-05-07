import 'package:flutter/material.dart';

class StartQuiz extends StatelessWidget {
  final String obraz;
  final Function options;
  StartQuiz(this.obraz, this.options);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                            child: Image.network(obraz)),
                      ],
                    ),
                  ),
                  RaisedButton(
                    child: Text('Więcej'),
                    elevation: 5.0,
                    color: Theme.of(context).accentColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.black),
                    ),
                    padding:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
                    onPressed: options,
                  ),
                ],
              ),
            ),
          );
  }
}