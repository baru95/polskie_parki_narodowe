import 'package:flutter/material.dart';
import 'package:polskie_parki_narodowe/models/entry_model.dart';
import 'package:polskie_parki_narodowe/services/auth.dart';
import 'package:polskie_parki_narodowe/services/datebase.dart';
import 'package:polskie_parki_narodowe/shared/main_button.dart';

import 'package:provider/provider.dart';

import 'formularz.dart';

class Ankieta extends StatefulWidget {
  @override
  _AnkietaState createState() => _AnkietaState();
}

class _AnkietaState extends State<Ankieta> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    void _goToStartQuiz() {
      showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
            child: Formularz(), //_startQuizButton
          );
        },
      );
    }

    return StreamProvider<List<Entry>>.value(
      value: DatabaseService().parks,
      // child: Text('aaa')
      child: Scaffold(
        appBar: AppBar(
          title: Text('Wyniki'),
          backgroundColor: Colors.green[900],
          elevation: 0.0,
          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.person),
              label: Text('wyloguj'),
              onPressed: () async {
                await _auth.signOut();
              },
            ),
          ],
        ),
        backgroundColor: Theme.of(context).backgroundColor,
        body: Container(
          
          child: Center(
            child: Column(
              children: <Widget>[
                Text('Proszę o wypełnienie paru personalnych informacji', style: TextStyle(
                  fontSize: 30,
                ),),
                MainButton(
                  buttonName: 'Formularz',
                  buttonAction: _goToStartQuiz,
                  //   ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  var pictureStartQuiz =
      'https://www.wykop.pl/cdn/c3201142/comment_C2t5foRhkokqBDyZXPNnXWyp79gJDZLO,wat.jpg?author=gorzka&auth=e975b4b1b3963a2ebaf2a15fc080f8ff';
}
