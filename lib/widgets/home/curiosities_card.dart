import 'package:flutter/material.dart';

class CuriositiesCard extends StatelessWidget {
  final curiosities;
  final Function next;
  final Function previous;

  CuriositiesCard(this.curiosities, this.next, this.previous);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Card(
        elevation: 5,
        child: Container(
          width: double.infinity,
          height: 160,
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 35,
                color: Theme.of(context).primaryColor,
                child: Center(
                  child: Text(
                    'Ciekawostki',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      curiosities,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      FlatButton(
                        child: Icon(Icons.navigate_before),
                        onPressed: previous,
                      ),
                      FlatButton(
                        child: Icon(Icons.navigate_next),
                        onPressed: next,
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
