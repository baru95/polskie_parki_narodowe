import 'package:flutter/material.dart';
import 'package:polskie_parki_narodowe/models/user.dart';
import 'package:polskie_parki_narodowe/services/datebase.dart';
import 'package:polskie_parki_narodowe/shared/constants.dart';
import 'package:polskie_parki_narodowe/shared/loading.dart';

import 'package:provider/provider.dart';

class Formularz extends StatefulWidget {
  @override
  _FormularzState createState() => _FormularzState();
}

class _FormularzState extends State<Formularz> {
  final _formKey = GlobalKey<FormState>();

  int _currentResult;
  String _currentGender;
  String _currentAge;
  String _currentEducation;
  String _currentInhabitancy;
  String _currentQuarter;
  String _currentPets;

  @override
  Widget build(BuildContext context) {
    User user = Provider.of<User>(context);
    // return Text('sss');

    return StreamBuilder<UserData>(
        stream: DatabaseService(uid: user.uid).userData,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // UserData userData = snapshot.data;
            return SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    Text(
                      'Wpisz swoje dane',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    SizedBox(height: 20.0),
                    /////   PODAJ WYNIK
                    DropdownButtonFormField(
                      hint: Text('Podaj wynik'),
                      value: _currentResult,
                      decoration: textInputDecoration,
                      items: result.map((val) {
                        return DropdownMenuItem(
                          value: val,
                          child: Text('$val'),
                        );
                      }).toList(),
                      onChanged: (val) => setState(() => _currentResult = val),
                    ),
                    SizedBox(height: 20.0),
                    // PODAJ PŁEĆ
                    DropdownButtonFormField(
                      hint: Text('Podaj płeć'),
                      value: _currentGender, // ?? userData.gender,
                      decoration: textInputDecoration,
                      items: gender.map((val) {
                        return DropdownMenuItem<String>(
                          value: val,
                          child: Text('$val'),
                        );
                      }).toList(),
                      onChanged: (String val) =>
                          setState(() => _currentGender = val),
                    ),
                    SizedBox(height: 20.0),
                    /////   PODAJ WIEK
                    DropdownButtonFormField(
                      hint: Text('Podaj wiek'),
                      value: _currentAge, // ?? userData.gender,
                      decoration: textInputDecoration,
                      items: age.map((val) {
                        return DropdownMenuItem<String>(
                          value: val,
                          child: Text('$val'),
                        );
                      }).toList(),
                      onChanged: (String val) =>
                          setState(() => _currentAge = val),
                    ),
                    SizedBox(height: 20.0),
                    /////   PODAJ WYKSZTAŁCENIE
                    DropdownButtonFormField(
                      hint: Text('Podaj wykształcenie'),
                      value: _currentEducation, // ?? userData.gender,
                      decoration: textInputDecoration,
                      items: education.map((val) {
                        return DropdownMenuItem<String>(
                          value: val,
                          child: Text('$val'),
                        );
                      }).toList(),
                      onChanged: (String val) =>
                          setState(() => _currentEducation = val),
                    ),
                    SizedBox(height: 20.0),
                    /////   PODAJ ZAMIESZKANIE
                    DropdownButtonFormField(
                      hint: Text('Podaj zamieszkanie'),
                      value: _currentInhabitancy, // ?? userData.gender,
                      decoration: textInputDecoration,
                      items: inhabitancy.map((val) {
                        return DropdownMenuItem<String>(
                          value: val,
                          child: Text('$val'),
                        );
                      }).toList(),
                      onChanged: (String val) =>
                          setState(() => _currentInhabitancy = val),
                    ),
                    SizedBox(height: 20.0),
                    /////   PODAJ KWARTAŁ
                    DropdownButtonFormField(
                      hint: Text('Podaj kwartał urodzenia'),
                      value: _currentQuarter, // ?? userData.gender,
                      decoration: textInputDecoration,
                      items: quarter.map((val) {
                        return DropdownMenuItem<String>(
                          value: val,
                          child: Text('$val'),
                        );
                      }).toList(),
                      onChanged: (String val) =>
                          setState(() => _currentQuarter = val),
                    ),
                    SizedBox(height: 20.0),
                    /////   PODAJ ZWIERZĄTKO
                    DropdownButtonFormField(
                      hint: Text('Czy posiadasz zwierzątko'),
                      value: _currentPets, // ?? userData.gender,
                      decoration: textInputDecoration,
                      items: pets.map((val) {
                        return DropdownMenuItem<String>(
                          value: val,
                          child: Text('$val'),
                        );
                      }).toList(),
                      onChanged: (String val) =>
                          setState(() => _currentPets = val),
                    ),
                    ///////////////////////////////////////////////////////////////////////
                    RaisedButton(
                      color: Theme.of(context).accentColor,
                      child: Text(
                        'Zapisz',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () async {
                        if (_formKey.currentState.validate()) {
                          await DatabaseService(uid: user.uid).updateUserData(
                              _currentResult ?? snapshot.data.result,
                              _currentGender ?? snapshot.data.gender,
                              _currentAge ?? snapshot.data.age,
                              _currentEducation ?? snapshot.data.education,
                              _currentInhabitancy ?? snapshot.data.inhabitancy,
                              _currentQuarter ?? snapshot.data.quarter,
                              _currentPets ?? snapshot.data.pets);
                          Navigator.pop(context);
                        }
                      },
                    ),
                  ],
                ),
              ),
            );
          } else {
            return Loading();
          }
        });
  }

  // final List<String> result = ['1', '2', '3', '4'];
  final List<int> result = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17
  ];

  final List<String> gender = ['kobieta', 'mężczyzna'];

  final List<String> age = [
    '15-19',
    '20-24',
    '25-29',
    '30-39',
    '40-49',
    '50-59',
    '60-65',
    '66 i więcej'
  ];
  final List<String> education = [
    'podstawowe',
    'zawodowe',
    'średnie ogólnokształcące',
    'średnie i policealne',
    'wyższe'
  ];

  final List<String> inhabitancy = [
    'wieś',
    'miasta do 20 tys',
    'miasta 20-199 tys',
    'miasta 200-499 tys',
    'miasta powyżej 500 tys'
  ];

  final List<String> quarter = ['I', 'II', 'III', 'IV'];

  final List<String> pets = ['tak', 'nie'];
}
