import 'package:flutter/foundation.dart';

class News {
  final String id;
  final String title;
  final DateTime date;

  News(
      {@required this.id,
      @required this.title,
      @required this.date});
}
