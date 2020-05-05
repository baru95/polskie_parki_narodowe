import 'package:flutter/material.dart';
import '../../models/parks_list.dart';

class ParkDetails extends StatefulWidget {
  final index;
  ParkDetails(this.index);

  @override
  _ParkDetailsState createState() => _ParkDetailsState();
}

class _ParkDetailsState extends State<ParkDetails> {
  static ParksList park = new ParksList();
  var p = park.parksList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(p[widget.index].parkName),
        ),
        body: Column(
          children: <Widget>[
            Card(
              child: Column(
                children: <Widget>[
                  Text('aaaaa')
                ],
              ),
            ),
            Center(
              child: RaisedButton(
                elevation: 5.0,
                color: Theme.of(context).accentColor,
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.black),
                ),
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Powrót!'),
              ),
            )
          ],
        ));
  }
}
