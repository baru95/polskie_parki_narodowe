import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../services/news_provider.dart';
import '../home/home_page.dart';
import '../parks/about_parks.dart';
import '../questionnaire/questionnaire.dart';

class NavigationPanel extends StatefulWidget {
  @override
  _NavigationPanelState createState() => _NavigationPanelState();
}

class _NavigationPanelState extends State<NavigationPanel> {
  final _pageOption = [HomePage(), AboutParks(), Questionnaire()]; //

  int _selectedIndex = 0;

  void _selectNavigation(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => NewsProvider(),
      child: Scaffold(
        body: _pageOption[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Strona główna'),
              // backgroundColor: Theme.of(context).accentColor
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_florist),
              title: Text('Parki'),
              // backgroundColor: Theme.of(context).accentColor
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.assignment),
              title: Text('Ankieta'),
              // backgroundColor: Theme.of(context).accentColor
            ),
          ],
          currentIndex: _selectedIndex,
          backgroundColor: Colors.green[900],
          selectedItemColor: Colors.white,
          onTap: _selectNavigation,
          // type: BottomNavigationBarType.shifting
        ),
      ),
    );
  }
}
