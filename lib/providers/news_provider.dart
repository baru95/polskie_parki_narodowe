import 'package:flutter/material.dart';

import '../models/news_model.dart';

class NewsProvider with ChangeNotifier {
  List<News> _items = [
    News(
      id: 't1',
      title:
          'Zgodnie z rekomendacją Ministra Środowiska Michała Wosia, od poniedziałku 20 kwietnia można swobodnie wchodzić na teren parków narodowych w całym kraju.',
      date: DateTime.now(),
    ),
    News(
      id: 't2',
      title:
          'News2',
      date: DateTime.now(),
    ),
  ];

  List<News> get items {
    return [..._items];
  }

  News findById(String id) {
    return _items.firstWhere((news) => news.id == id);
  }

  void addNews() {
    // _items.add(value);
    notifyListeners();
  }
}