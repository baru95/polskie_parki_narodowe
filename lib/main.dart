import 'package:flutter/material.dart';
import 'widgets/login_panel.dart';
import 'widgets/parks/about_parks.dart';
import 'widgets/home/home.dart';
import 'widgets/questionnaire/questionnaire.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parki Narodowe',
      theme: ThemeData(
          primaryColor: Colors.green[900],
          accentColor: Colors.green,
          backgroundColor: Colors.lightGreen[200]),
      home: MyHomePage(title: 'Polskie Parki Narodowe'),
      debugShowCheckedModeBanner: false, //map
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _pageOption = [Home(), AboutParks(), Questionnaire()];
  // var _pageController = PageController();

  int _selectedIndex = 0;

  void _selectNavigation(index) {
    setState(() {
      _selectedIndex = index;
      // _pageController.animateToPage(_selectedIndex,
      //     duration: Duration(milliseconds: 200), curve: Curves.linear);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.people),
            onPressed: () => LoginPanel(),
          ),
        ],
      ),
      body: 
      _pageOption[_selectedIndex],
      // PageView(
      //   children: _pageOption,
      //   onPageChanged: (index){
      //     setState(() {
      //       _selectedIndex = index;
      //     });
      //   },
      // ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Strona główna'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_florist),
            title: Text('Parki'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            title: Text('Ankieta'),
          ),
        ],
        currentIndex: _selectedIndex,
        backgroundColor: Theme.of(context).accentColor,
        selectedItemColor: Colors.white,
        onTap: _selectNavigation,
      ),
    );
  }
}
