import 'package:flutter/material.dart';

class NewsPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('aaa');
  }
}
// import 'package:flutter/material.dart';
// import 'package:polskie_parki_narodowe/models/news_model.dart';
// import 'package:provider/provider.dart';
// import '../../widgets/home/transaction_list.dart';
// import '../../providers/news_provider.dart';

// class NewsPanel extends StatefulWidget {
//   @override
//   _NewsPanelState createState() => _NewsPanelState();
// }

// class _NewsPanelState extends State<NewsPanel> {
//     void _deleteTransaction(String id) {
//     print('działa');
//   }

//    List<News> aaa = [
//     News(
//       id: 't1',
//       title:
//           'Zgodnie z rekomendacją Ministra Środowiska Michała Wosia, od poniedziałku 20 kwietnia można swobodnie wchodzić na teren parków narodowych w całym kraju.',
//       date: DateTime.now(),
//     ),
//     News(
//       id: 't2',
//       title:
//           'News2',
//       date: DateTime.now(),
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     // final newsData = Provider.of<NewsProvider>(context);
//     // final products = newsData.items;
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Aktualności'),
//         actions: <Widget>[],
//       ),
//       body: Column(
//         children: <Widget>[
//           TransactionList(aaa, _deleteTransaction),

//         ],
//       ),
//     );
//   }
// }
