import 'package:flutter/material.dart';
import './quiz.dart';
import 'result.dart';

class Questionnaire extends StatefulWidget {
  @override
  _QuestionnaireState createState() => _QuestionnaireState();
}

class _QuestionnaireState extends State<Questionnaire> {
  // final _formKey = GlobalKey<FormState>();
  // String _name = "";

  ////////////////////////////
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex += 1;
    });

    _totalScore += score;
    
    // print(_totalScore);
    // print(_questionIndex);

    // if (_questionIndex < _questions.length) {
    //   print('We have more questions!');
    // } else {
    //   print('No more question!');
    // }
  }
  ////////////////////////////

  @override
  Widget build(BuildContext context) {
    return Container(
      child: (_questionIndex < _questions.length)
          ? Quiz(
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
              questions: _questions)
          : Result(_totalScore, _resetQuiz),
    );

    // return Container(
    //   padding: EdgeInsets.all(10),
    //   child: Form(
    //     key: _formKey,
    //     autovalidate: true,
    //     child: Column(
    //       children: <Widget>[
    //         TextFormField(
    //           onSaved: (String val) => setState(() => _name = val),
    //           validator: (value) {
    //             if (value.isEmpty) {
    //               return "Musisz podać imię";
    //             }

    //             if (value.length < 2) {
    //               return "Imię musi mieć więcej niż jeden znak";
    //             }
    //           },
    //           decoration: InputDecoration(
    //               hintText: 'Name',
    //               helperText: 'This has to be over two characters in length.'),
    //         ),
    //         RaisedButton(
    //           child: Text('Submit'),
    //           onPressed: () {
    //             if (_formKey.currentState.validate()) {
    //               _formKey.currentState.save();
    //               Scaffold.of(context)
    //                   .showSnackBar(SnackBar(content: Text('This is valid!')));
    //             } else {
    //               Scaffold.of(context)
    //                   .showSnackBar(SnackBar(content: Text('Not valid!')));
    //             }
    //           },
    //         ),
    //         Text(_name),
    //       ],
    //     ),
    //   ),
    // );
  }

    final _questions = const [
    {
      'querstionText': 'Czy należy dbać o środowisko?',
      'answers:': [
        {'text': 'oczywiście!', 'score': 1},
        {'text': 'nie', 'score': 0},
        {'text': 'nie, bo nikt tego nie robi', 'score': 0},
      ]
    },
    {
      'querstionText': 'Smog to?',
      'answers:': [
        {'text': 'dym z komina', 'score': 0},
        {'text': 'gatunek smoka', 'score': 0},
        {'text': 'bardzo zanieczyszczone powietrze wiszące nad miastem', 'score': 1},
      ]
    },
        {
      'querstionText': 'Co się robi z zużytymi bateriami?',
      'answers:': [
        {'text': 'wyrzuca się do specjalnego pojemnika', 'score': 1},
        {'text': 'wyrzuca do zwykłego kosza na śmieci', 'score': 0},
        {'text': 'zakopuje w ziemi', 'score': 0},
      ]
    },
    {
      'querstionText': 'Warstwa ozonowa to:',
      'answers:': [
        {'text': 'ochronna warstwa Ziemi', 'score': 1},
        {'text': 'kurtka zimowa', 'score': 0},
        {'text': 'jedna z warstw na oceanie', 'score': 0},
      ]
    },
        {
      'querstionText': 'Co to jest recykling?',
      'answers:': [
        {'text': 'gra komputerowa', 'score': 0},
        {'text': 'dyscyplina sportowa', 'score': 0},
        {'text': 'powtórne przetwarzanie zużytych materiałów w celu wykorzystania ich ponownie', 'score': 1},
      ]
    },
    {
      'querstionText': 'Ile jest parków narodowych w Polsce?',
      'answers:': [
        {'text': '15', 'score': 0},
        {'text': '23', 'score': 1},
        {'text': '34', 'score': 0},
      ]
    },
        {
      'querstionText': 'Do żółtego pojemnika na odpady wyrzucimy:',
      'answers:': [
        {'text': 'metal', 'score': 1},
        {'text': 'plastik', 'score': 0},
        {'text': 'szkło', 'score': 0},
      ]
    },
    {
      'querstionText': 'Do zielonego pojemnika na odpady wyrzucimy:',
      'answers:': [
        {'text': 'szkło', 'score': 1},
        {'text': 'plastik', 'score': 0},
        {'text': 'metal', 'score': 0},
      ]
    },
        {
      'querstionText': 'Jednym ze sposobów dbania o środowisko jest:',
      'answers:': [
        {'text': 'częste jeżdżenie samochodem', 'score': 0},
        {'text': 'palenie ogniska w lesie', 'score': 0},
        {'text': 'segregowanie śmieci', 'score': 1},
      ]
    },
    {
      'querstionText': 'Gdzie należy wyrzucać szczątki organiczne?',
      'answers:': [
        {'text': 'do zwykłego śmietnika', 'score': 0},
        {'text': 'na kompost', 'score': 1},
        {'text': 'na ulice', 'score': 0},
      ]
    },
  ];
}
