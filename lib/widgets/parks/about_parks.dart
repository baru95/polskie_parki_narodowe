import 'package:flutter/material.dart';
import './park_gallery.dart';
import './park_detail.dart';
import '../../models/parks.dart';

class AboutParks extends StatefulWidget {
  @override
  _AboutParksState createState() => _AboutParksState();
}

class _AboutParksState extends State<AboutParks> {
  int options = 0;

  static Parks parks = new Parks();
  var p = parks.parksList;

  int element;
  // AboutParks(this.index);
  List imgGallery;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: (options < 1)
          ? ListView.builder(
              //LISTA PARKÓW
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
                            //ZDJĘCIE PARKÓW
                            height: 100.0,
                            width: 70.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(5),
                                  topLeft: Radius.circular(5)),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(p[index].image),
                              ),
                            ),
                          ),
                          Container(
                            //NAZWA I OPIS
                            height: 100,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(10, 2, 0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    p[index].parkName,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 2),
                                    child: Container(
                                      width: 230,
                                      child: Text(
                                        p[index].description,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color.fromARGB(
                                                255, 48, 48, 54)),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          //PRZYCISK WIĘCEJ
                          RaisedButton(
                            child: Text('Więcej'),
                            elevation: 5.0,
                            color: Theme.of(context).accentColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                              side: BorderSide(color: Colors.black),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 0.0),
                            onPressed: () {
                              setState(() {
                                options = 1;
                                element = index;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            )
          : Container(
              //SZCZEGÓŁY PARKÓW
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  ParkDetail(
                    namePark: p[element].parkName,
                    address: p[element].address,
                    imagePark: p[element].image,
                    moreDescription: p[element].moreDescription,
                    phone: p[element].phone,
                    area: p[element].area,
                  ),
                  Container(
                    //PRZYCISKI PARK DETAIL
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        RaisedButton(
                          child: Text('Powrót'),
                          elevation: 5.0,
                          color: Theme.of(context).accentColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0),
                            side: BorderSide(color: Colors.black),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 0.0),
                          onPressed: () {
                            setState(() {
                              options = 0;
                            });
                          },
                        ),
                        RaisedButton(
                          child: Text('Galeria'),
                          elevation: 5.0,
                          color: Theme.of(context).accentColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0),
                            side: BorderSide(color: Colors.black),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 0.0),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                imgGallery = [
                                  parks.parksList[element].image2,
                                  parks.parksList[element].image3,
                                  parks.parksList[element].image4,
                                  parks.parksList[element].image5,
                                ];
                                return ParkGallery(
                                    p[element].parkName, imgGallery);
                              }),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
    );
    // return Container(
    //   child: (_option < 1) ? List() : ParkDetails(1),
    // );
  }
}
