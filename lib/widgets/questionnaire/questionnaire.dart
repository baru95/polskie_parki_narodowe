import 'package:flutter/material.dart';
import '../../models/entry_items.dart';
import '../../models/question_model.dart';
import '../main_button.dart';
import './quiz.dart';
import '../../models/forms_model.dart';
import 'result.dart';
import 'start_quiz.dart';

class Questionnaire extends StatefulWidget {
  @override
  _QuestionnaireState createState() => _QuestionnaireState();
}

class _QuestionnaireState extends State<Questionnaire> {
  var _quizOptions = 0;
  var _questionIndex = 0;
  var _totalScore = 0;

  static Forms dataForm = new Forms();
  var data = dataForm.dataForms;

  void _goToForms() {
    setState(() {
      _quizOptions = 2;
    });
  }

  void _sendForms() {
    setState(() {
      _quizOptions = 4;
    });
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
            color: Theme.of(context).backgroundColor,
            child: (_questionIndex < questions.length)
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                    questions: questions)
                : (_quizOptions != 2)
                    ? Result(_totalScore, _goToForms)
                    // : Forms(_totalScore)
                    : (_quizOptions == 2)
                        ? buildListView()
                        : Center(
                            child: Text(
                              'Dziękuje za wypełnienie formularza :)',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
          );
  }

  var pictureStartQuiz =
      'https://www.wykop.pl/cdn/c3201142/comment_C2t5foRhkokqBDyZXPNnXWyp79gJDZLO,wat.jpg?author=gorzka&auth=e975b4b1b3963a2ebaf2a15fc080f8ff';

  Widget buildListView() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: 500.0,
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) =>
                  EntryItem(data[index]),
              itemCount: data.length,
            ),
          ),
          MainButton(
            buttonName: 'Wyślij',
            buttonAction: _sendForms,
          )
        ],
      ),
    );
  }
}
