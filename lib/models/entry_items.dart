import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

import 'entry_model.dart';

class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);

  final Entry entry;

  Widget _buildTiles(Entry root) {
    //if (root.children.isEmpty) return ListTile(title: Text(root.title));
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(root.title),
      children: <Widget>[
        RadioButtonGroup(
            labels: root.children.map((child) => child.title).toList(),
            onSelected: (String selected) => print(selected)),
      ],
    ); //root.children.map(_buildTiles).toList(),
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}