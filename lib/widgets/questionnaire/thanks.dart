import 'package:flutter/material.dart';
import '../../main.dart';
import '../../models/entry_items.dart';
import '../main_button.dart';
import '../../models/forms_model.dart';

class Thanks extends StatefulWidget {
  static Forms dataForm = new Forms();

  @override
  _ThanksState createState() => _ThanksState();
}

class _ThanksState extends State<Thanks> {
  var data = Thanks.dataForm.dataForms;
  int options = 0;

  @override
  Widget build(BuildContext context) {
    return (options == 0)
        ? buildListView()
        : (options == 1) ? thanks() : MyApp();
  }

  Widget buildListView() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formularz'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 500.0,
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) =>
                    EntryItem(data[index]),
                itemCount: data.length,
              ),
            ),
            MainButton(
              buttonName: 'Wyślij',
              buttonAction: goToThanks,
            )
          ],
        ),
      ),
    );
  }

  Widget thanks() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formularz'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              'Dziękuje za wypełnienie formularza :)',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            MainButton(
              buttonName: 'Powrót',
              buttonAction: backToHome,
            )
          ],
        ),
      ),
    );
  }

  void goToThanks() {
    setState(() {
      options = 1;
    });
  }

  void backToHome() {
    setState(() {
      options = 2;
    });
  }
}
