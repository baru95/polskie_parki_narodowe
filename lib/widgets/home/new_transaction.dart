import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../main_button.dart';

class NewTransaction extends StatefulWidget {
  final Function addTx;

  NewTransaction(this.addTx);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final _titleController = TextEditingController();
  DateTime _selectedDate;

  _submitData() {
    final enteredTitle = _titleController.text;

    if (enteredTitle.isEmpty || _selectedDate == null) {
      return;
    }

    widget.addTx(enteredTitle, _selectedDate);

    Navigator.of(context).pop();
  }

  void _presentDatePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2020),
            lastDate: DateTime.now())
        .then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _selectedDate = pickedDate;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.only(
              left: 10,
              top: 10,
              right: 10,
              bottom: MediaQuery.of(context).viewInsets.bottom + 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: 'Treść'),
                controller: _titleController,
                onSubmitted: (_) => _submitData(),
              ),
              Container(
                height: 70,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        _selectedDate == null
                            ? 'Nie wybrano daty!'
                            : 'Wybrana data: ${DateFormat.yMd().format(_selectedDate)}',
                      ),
                    ),
                    FlatButton(
                      textColor: Theme.of(context).primaryColor,
                      child: Text(
                        'Wybierz date!',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onPressed: _presentDatePicker,
                    )
                  ],
                ),
              ),
              MainButton(
                buttonName: 'Dodaj',
                buttonAction: _submitData,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
