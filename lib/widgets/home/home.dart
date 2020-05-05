import 'package:flutter/material.dart';

// import './location.dart';
// import './login_panel.dart';
// import 'gallery.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            child: Card(
              elevation: 5,
              child: Container(
                width: double.infinity,
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 30,
                      color: Colors.grey[700],
                      child: Text(
                        'Aktualności',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/aktualności.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Text(
                        actually,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            elevation: 5,
            child: Text('a'),
          ),
          Card(
            elevation: 5,
            child: Text('ccc'),
          ),
        ],
      ),
    );
  }

  String actually =
      'Zgodnie z rekomendacją Ministra Środowiska Michała Wosia, od poniedziałku 20 kwietnia można swobodnie wchodzić na teren parków narodowych w całym kraju.';
}
