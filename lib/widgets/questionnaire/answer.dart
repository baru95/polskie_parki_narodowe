import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return 
    Container(
        width: double.infinity,
        child: InkWell(
          splashColor: Theme.of(context).primaryColor,
          onTap: selectHandler,
          child: Container(
            padding: const EdgeInsets.all(10),
            // decoration: BoxDecoration(
            //   gradient: LinearGradient(
            //     colors: [
            //       Theme.of(context).primaryColor.withOpacity(0.3),
            //       Theme.of(context).primaryColor,
            //     ],
            //     begin: Alignment.topLeft,
            //     end: Alignment.bottomRight,
            //   ),
            //   borderRadius: BorderRadius.circular(5),
            // ),
            child: Card(
              child: Text(answerText),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 4,
              margin: EdgeInsets.all(10),
            ),
          ),
        )
        // child: RaisedButton(
        //   color: Theme.of(context).accentColor,
        //   textColor: Colors.white,
        //   child: Text(answerText),
        //   onPressed: selectHandler,
        // ),
        );
  }
}
