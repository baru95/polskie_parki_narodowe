import 'package:flutter/material.dart';

class CuriositiesCard extends StatelessWidget {
  final curiosities;

  CuriositiesCard(this.curiosities);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Card(
        elevation: 5,
        child: Container(
          width: double.infinity,
          height: 110,
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
              Container(
                padding: EdgeInsets.all(5),
                child: Text(
                  curiosities[3],
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
