import 'package:flutter/material.dart';
import 'package:polskie_parki_narodowe/services/auth.dart';
import 'package:polskie_parki_narodowe/shared/constants.dart';
import 'package:polskie_parki_narodowe/shared/loading.dart';


class Register extends StatefulWidget {
  final Function toggleView;
  Register({this.toggleView});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String error = '';
  bool loading = false;

  // text field state
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
            backgroundColor: Theme.of(context).accentColor,
            appBar: AppBar(
              backgroundColor: Theme.of(context).primaryColor,
              elevation: 0.0,
              title: Text('Rejestracja'),
              actions: <Widget>[
                FlatButton.icon(
                  icon: Icon(Icons.person),
                  label: Text('Logowanie'),
                  onPressed: () => widget.toggleView(),
                ),
              ],
            ),
            body: Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 17.0),
                    TextFormField(
                      decoration:
                          textInputDecoration.copyWith(hintText: 'email'),
                      validator: (val) => val.isEmpty ? 'Podaj email' : null,
                      onChanged: (val) {
                        setState(() => email = val);
                      },
                    ),
                    SizedBox(height: 17.0),
                    TextFormField(
                      decoration:
                          textInputDecoration.copyWith(hintText: 'hasło'),
                      obscureText: true,
                      validator: (val) => val.length < 6
                          ? 'Hasło powinno zawierać min. 6 znaków'
                          : null,
                      onChanged: (val) {
                        setState(() => password = val);
                      },
                    ),
                    SizedBox(height: 17.0),
                    RaisedButton(
                        elevation: 5.0,
                        color: Theme.of(context).primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                          side: BorderSide(color: Colors.black),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 0.0),
                        child: Text(
                          'Zarejestruj',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () async {
                          if (_formKey.currentState.validate()) {
                            setState(() => loading = true);
                            dynamic result = await _auth
                                .registerWithEmailAndPassword(email, password);
                            if (result == null) {
                              setState(() {
                                loading = false;
                                error = 'Proszę podać prawidłowy email';
                              });
                            }
                          }
                        }),
                    SizedBox(height: 12.0),
                    Text(
                      error,
                      style: TextStyle(color: Theme.of(context).errorColor, fontSize: 14.0),
                    )
                  ],
                ),
              ),
            ),
          );
  }
}
