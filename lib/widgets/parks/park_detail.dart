import 'package:flutter/material.dart';

class ParkDetail extends StatelessWidget {
  final String namePark;
  final String imagePark;
  final String moreDescription;
  final String address;
  final String area;
  final String phone;

  ParkDetail(
      {this.namePark,
      this.imagePark,
      this.moreDescription,
      this.address,
      this.area,
      this.phone});
      
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Container(
            //NAZWA PARKU
            child: Text(
              namePark,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 7, left: 7, bottom: 7),
                height: 200.0,
                width: 140.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage(imagePark))),
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: 250,
                child: Text(
                  moreDescription,
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Text(
                  'Dane:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.location_on),
                    Text(
                      address,
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.arrow_upward),
                    Text(
                      area,
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.phone),
                    Text(
                      phone,
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ////////////////////////////////////////////////
        ],
      ),
    );
  }
}
