import 'package:flutter/material.dart';
import 'package:polskie_parki_narodowe/shared/main_button.dart';
import './park_gallery.dart';
import './park_detail.dart';
import '../../models/parks.dart';

class AboutParks extends StatefulWidget {
  @override
  _AboutParksState createState() => _AboutParksState();
}

class _AboutParksState extends State<AboutParks> {
  int _navigateParksTab = 0; //0-lista parków, 1-szczegóły parków

  static Parks parks = new Parks();
  var p = parks.parksList;

  int _indexParksList;
  List _photoList;

  Widget _parkList() {
    return ListView.builder(
      //LISTA PARKÓW
      itemCount: p.length,
      itemBuilder: (context, index) {
        return Container(
          //key: Key(parks[index].toString()),
          child: Card(
            elevation: 5,
            child: Container(
              height: 150.0,
              child: Row(
                children: <Widget>[
                  Container(
                    //ZDJĘCIE PARKÓW
                    height: 150.0,
                    width: 100.0,
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
                    height: 150,
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
                          ),
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
                                _navigateParksTab = 1;
                                _indexParksList = index;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  //przycisk dla szczegółów parków
                  // RaisedButton(
                  //   child: Text('Więcej'),
                  //   elevation: 5.0,
                  //   color: Theme.of(context).accentColor,
                  //   shape: RoundedRectangleBorder(
                  //     borderRadius: new BorderRadius.circular(10.0),
                  //     side: BorderSide(color: Colors.black),
                  //   ),
                  //   padding:
                  //       EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
                  //   onPressed: () {
                  //     setState(() {
                  //       _navigateParksTab = 1;
                  //       _indexParksList = index;
                  //     });
                  //   },
                  // ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _parkDetails() {
    return SingleChildScrollView(
      child: Container(
        //SZCZEGÓŁY PARKÓW
        //     height: (MediaQuery.of(context).size.height -
        //     MediaQuery.of(context).padding.top) *
        // 0.85,
        width: double.infinity,
        child: Column(
          children: <Widget>[
            ParkDetail(
              namePark: p[_indexParksList].parkName,
              address: p[_indexParksList].address,
              imagePark: p[_indexParksList].image,
              moreDescription: p[_indexParksList].moreDescription,
              phone: p[_indexParksList].phone,
              area: p[_indexParksList].area,
              description: p[_indexParksList].description,
            ),
            Container(
              //PRZYCISKI PARK DETAIL
              padding: EdgeInsets.all(40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  MainButton(
                    buttonName: 'Powrót',
                    buttonAction: _backToParkList,
                  ),
                  MainButton(
                    buttonName: 'Galeria',
                    buttonAction: _goToParksGallery,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _backToParkList() {
    setState(() {
      _navigateParksTab = 0;
    });
  }

  void _goToParksGallery() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        _photoList = [
          parks.parksList[_indexParksList].image2,
          parks.parksList[_indexParksList].image3,
          parks.parksList[_indexParksList].image4,
          parks.parksList[_indexParksList].image5,
        ];
        return ParkGallery(p[_indexParksList].parkName, _photoList);
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return Container(
        // color: Theme.of(context).backgroundColor,
        color: Theme.of(context).backgroundColor,
        child: (_navigateParksTab < 1) ? _parkList() : _parkDetails());
  }
}
