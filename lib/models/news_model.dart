import 'package:flutter/foundation.dart';

class News {
  final String id;
  final String title;
  final double amount;
  final DateTime date;

  News(
      {@required this.id,
      @required this.title,
      @required this.amount,
      @required this.date});
}
