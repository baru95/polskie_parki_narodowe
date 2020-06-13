import '../../services/auth.dart';
import 'package:flutter/material.dart';

import 'navigation_panel.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.green,
        // drawer: MainDrawer(),
        appBar: AppBar(
          title: Text('Polskie Parki Narodowe'),
          backgroundColor: Colors.green[900],
          elevation: 0.0,
          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.person),
              label: Text('wyloguj'),
              onPressed: () async {
                await _auth.signOut();
              },
            ),
          ],
        ),
        body: Container(
          child: NavigationPanel(),
        ),
      ),
    );
  }
}
