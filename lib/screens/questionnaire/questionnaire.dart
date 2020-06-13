import 'package:flutter/material.dart';

import '../../models/question_model.dart';

import './quiz.dart';

import 'ankieta.dart';
import 'result.dart';
import 'start_quiz.dart';
// import 'thanks.dart';

class Questionnaire extends StatefulWidget {
  @override
  _QuestionnaireState createState() => _QuestionnaireState();
}

class _QuestionnaireState extends State<Questionnaire> {
  var _quizOptions = 0;
  var _questionIndex = 0;
  var _totalScore = 0;

  void _goToForms() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Ankieta()),
    );
  }

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex += 1;
    });

    _totalScore += score;
  }

  void _startQuizButton() {
    setState(() {
      _quizOptions = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return (_quizOptions == 0)
        // ? buildListView()
        ? StartQuiz(pictureStartQuiz, _startQuizButton)
        : Container(
            // color: Theme.of(context).backgroundColor,
            color: Theme.of(context).backgroundColor,
            child: (_questionIndex < questions.length)
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                    questions: questions)
                : Result(_totalScore, _goToForms));
  }

  var pictureStartQuiz =
      'https://www.wykop.pl/cdn/c3201142/comment_C2t5foRhkokqBDyZXPNnXWyp79gJDZLO,wat.jpg?author=gorzka&auth=e975b4b1b3963a2ebaf2a15fc080f8ff';
}
