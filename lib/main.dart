import 'package:flutter/material.dart';
import 'widgets/login_panel.dart';
import 'widgets/main_drawer.dart';
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

  int _selectedIndex = 0;

  void _selectNavigation(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: MainDrawer(),
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.people),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => login2()),
              );
            },
          ),
        ],
      ),
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
        backgroundColor: Theme.of(context).accentColor,
        selectedItemColor: Colors.white,
        onTap: _selectNavigation,
        // type: BottomNavigationBarType.shifting
      ),
    );
  }

  /////////////////////////////////logowanie2
  static final usernameController = new TextEditingController();
  static final passwordController = new TextEditingController();

  var l = '';
  var h = '';

  final logo = Hero(
    tag: 'logo',
    child: CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: 40.0,
      child: Text('Admin'),
    ),
  );

  // final txtUserName = TextField(
  //   controller: usernameController,
  // );
  final txtUserName = TextField(
      controller: usernameController,
      decoration: InputDecoration(
          hintText: 'Username',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(30.0))));

  final txtPassword = TextField(
      controller: passwordController,
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'Password',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(30.0))));

  final btnLogin = RaisedButton(
    child: Text('Login'),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    onPressed: () {
      if (usernameController != null &&
          usernameController.text == "abc" &&
          passwordController != null &&
          passwordController.text == "123") {
        print('Zalogowano');
      }
    },
  );

  Widget login2() {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Home Page"),
        ),
        body: new Center(
          child: new ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 25, right: 25),
            children: <Widget>[
              logo,
              SizedBox(
                height: 20.0,
              ),
              txtUserName,
              SizedBox(
                height: 8.0,
              ),
              txtPassword,
              SizedBox(
                height: 20.0,
              ),
              btnLogin,
            ],
          ),
        ));
  }

/////////////////////////////////////////////////////
  Widget login() {
    // String login = 'abc';
    // String password = '123';
    return Container(
      child: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.green,
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.bottomRight,
                widthFactor: 0.6,
                heightFactor: 0.6,
                child: Material(
                  borderRadius: BorderRadius.all(Radius.circular(200)),
                  color: Color.fromRGBO(255, 255, 255, 0.4),
                  child: Container(
                    width: 400,
                    height: 400,
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: 400,
                  height: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      // Material(
                      //     elevation: 10.0,
                      //     borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      //     child: Padding(
                      //       padding: const EdgeInsets.all(8.0),
                      //       child: Image.asset(
                      //         '../assets/images/flutter-logo.png',
                      //         width: 80,
                      //         height: 80,
                      //       ),
                      //     ),),
                      LoginPanel(Icon(Icons.person, color: Colors.white),
                          'Login', false),
                      LoginPanel(
                          Icon(Icons.lock, color: Colors.white), 'Hasło', true),
                      Container(
                        width: 150,
                        child: RaisedButton(
                          onPressed: () {},
                          color: Colors.green[900],
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          child: Text(
                            'Login',
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
