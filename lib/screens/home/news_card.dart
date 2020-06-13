import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  final String _news;
  final String _newsDate;

  NewsCard(this._news, this._newsDate);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Card(
        elevation: 5,
        child: Container(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 35,
                color: Theme.of(context).primaryColor,
                // color: Theme.of(context).primaryColor,
                child: Center(
                  child: Text(
                    'Aktualności',
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
                child: Column(
                  children: <Widget>[
                    Text(
                      _news,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(_newsDate),
                        // RaisedButton(
                        //   child: Text('Więcej'),
                        //   elevation: 5.0,
                        //   color: Theme.of(context).accentColor,
                        //   // color: Theme.of(context).accentColor,
                        //   shape: RoundedRectangleBorder(
                        //     borderRadius: new BorderRadius.circular(10.0),
                        //     side: BorderSide(color: Colors.black),
                        //   ),
                        //   padding:
                        //       EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
                        //   onPressed: () {},
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
