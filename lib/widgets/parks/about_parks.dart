import 'package:flutter/material.dart';
import './park_details.dart';
import '../../models/parks_list.dart';

class AboutParks extends StatefulWidget {
  @override
  _AboutParksState createState() => _AboutParksState();
}

class _AboutParksState extends State<AboutParks> {
  static ParksList parks = new ParksList();
  var p = parks.parksList;

  int i;
  // AboutParks(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: p.length,
        itemBuilder: (context, index) {
          return Container(
            //key: Key(parks[index].toString()),
            child: Card(
              elevation: 5,
              child: Container(
                height: 100.0,
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 100.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(5),
                              topLeft: Radius.circular(5)),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(p[index].image))),
                    ),
                    Container(
                      height: 100,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(10, 2, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              p[index].parkName,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 5, 0, 2),
                              child: Container(
                                width: 230,
                                child: Text(
                                  p[index].description,
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 48, 48, 54)),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: RaisedButton(
                        child: Text('Więcej'),
                        elevation: 5.0,
                        color: Theme.of(context).accentColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.black),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 0.0),
                        onPressed: () {
                          setState(() {
                            i = index;
                          });
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ParkDetails(index)),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
