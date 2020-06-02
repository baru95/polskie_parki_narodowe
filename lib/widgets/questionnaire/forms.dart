import 'package:flutter/material.dart';

class Forms extends StatefulWidget {
  @override
  _FormsState createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  final _formKey = GlobalKey();

  var bool = 'aa';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        child: Builder(
          builder: (context) => Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // TextFormField(
                //   decoration:
                //       InputDecoration(labelText: 'First name'),
                //   validator: (value) {
                //     if (value.isEmpty) {
                //       return 'Please enter your first name';
                //     }
                //   },
                //   onSaved: (val) {}

                // ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Text(
                    'Podaj swój wiek',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                TextFormField(
                    decoration: InputDecoration(labelText: 'Wiek'),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Proszę o podanie wieku';
                      }
                    },
                    onSaved: (val) {}),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child:
                      Text('Podaj swoją płeć', style: TextStyle(fontSize: 24)),
                ),

                CheckboxListTile(
                    title: const Text('kobieta'),
                    value: false,
                    onChanged: (val) {}),
                CheckboxListTile(
                    title: const Text('mężczyzna'),
                    value: true,
                    onChanged: (val) {}),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Text('Podaj swoje wykształcenie',
                      style: TextStyle(fontSize: 24)),
                ),
                CheckboxListTile(
                    title: const Text('podstawowe'),
                    value: false,
                    onChanged: (val) {}),
                CheckboxListTile(
                    title: const Text('zawodowe'),
                    value: false,
                    onChanged: (val) {}),
                CheckboxListTile(
                    title: const Text('średnie ogólnokształcące'),
                    value: false,
                    onChanged: (val) {}),
                CheckboxListTile(
                    title: const Text('średnie i policealne'),
                    value: false,
                    onChanged: (val) {}),
                CheckboxListTile(
                    title: const Text('wyższe'),
                    value: true,
                    onChanged: (val) {}),
                Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10.0),
                    child: RaisedButton(onPressed: () {}, child: Text('Save'))),
                TextFormField(
                    decoration: InputDecoration(labelText: 'Wiek'),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Proszę o podanie wieku';
                      }
                    },
                    onSaved: (val) {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
//   final _form = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // color: Theme.of(context).accentColor,
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _form,
//           child: ListView(
//             children: <Widget>[
//               TextFormField(
//                 decoration: InputDecoration(labelText: 'Title'),
//                 textInputAction: TextInputAction.next,
//                 onFieldSubmitted: (_) {},
//                 onSaved: (value) {},
//               ),
//               TextFormField(
//                 decoration: InputDecoration(labelText: 'Title'),
//                 textInputAction: TextInputAction.next,
//                 onFieldSubmitted: (_) {},
//                 onSaved: (value) {},
//               ),

//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
