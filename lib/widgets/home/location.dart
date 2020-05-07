import 'package:flutter/material.dart';

class Location extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10, bottom: 10, left: 10),
      child: Card(
        elevation: 5,
        child: Container(
          width: double.infinity,
          // height: 100,
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 35,
                color: Theme.of(context).primaryColor,
                child: Center(
                  child: Text(
                    'Znajdź nas na mapie',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 150,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          topLeft: Radius.circular(5)),
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://www.naszakgp.pl/wp-content/uploads/2014/08/mapa_pn_logotypy_nazwy_nastrone.jpg'),
                      ),
                    ),
                  ),
                  RaisedButton(
                    child: Icon(Icons.search),
                    elevation: 5.0,
                    color: Theme.of(context).accentColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.black),
                    ),
                    // padding:
                    //     EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
                    onPressed: () {},
                  ),
                  // IconButton(
                  //   icon: Icon(Icons.search),
                  //   iconSize: 50,
                  //   color: Theme.of(context).accentColor,
                  //   padding:
                  //       EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
                  //   onPressed: () {},
                  // )
                ],
              ),
              // AssetImage('assets/images/aktualności.jpg'),
            ],
          ),
        ),
      ),
    );
  }
}
