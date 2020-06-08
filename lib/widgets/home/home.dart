import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../../providers/news_provider.dart';
// import '../../widgets/home/transaction_list.dart';
import 'curiosities_card.dart';
import 'location_card.dart';
// import 'new_transaction.dart';
import 'news_card.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // int _indexHomeNavigation = 0; //1-lista aktualności 2-lista ciekawostek

  // void _showNewsList() {
  //   setState(() {
  //     _indexHomeNavigation = 1;
  //   });
  // }

  // void _showCuriositiesList() {
  //   setState(() {
  //     _indexHomeNavigation = 2;
  //   });
  // }

  // void _addNewTransaction(String txTitle, DateTime chosenDate) {
  //   final newTx = News(
  //     title: txTitle,
  //     date: chosenDate,
  //     id: DateTime.now().toString(),
  //   );

  //   setState(() {
  //     _userTransactions.add(newTx);
  //   });
  // }

  // void _startAddNewTransaction(BuildContext ctx) {
  //   showModalBottomSheet(
  //     context: ctx,
  //     builder: (_) {
  //       return GestureDetector(
  //         onTap: () {},
  //         child: NewTransaction(_addNewTransaction),
  //         behavior: HitTestBehavior.opaque,
  //       );
  //     },
  //   );
  // }

  // void _deleteTransaction(String id) {
  //   setState(() {
  //     _userTransactions.removeWhere((tx) => tx.id == id);
  //   });
  // }
  int curiositiesIndex = 0;

  void nextCuriosities() {
    setState(() {
      (curiositiesIndex < curiosities.length - 1)
          ? curiositiesIndex += 1
          : curiositiesIndex = 0;
    });
  }

  void previousCuriosities() {
    setState(() {
      (curiositiesIndex > 0)
          ? curiositiesIndex -= 1
          : curiositiesIndex = curiosities.length - 1;
    });
  }

  Widget _showHomePage() {
    final newsData = Provider.of<NewsProvider>(context);
    final products = newsData.items;
    return Column(
      children: <Widget>[
        NewsCard(products[0].title, DateFormat.yMd().format(products[0].date)
            // _userTransactions[_userTransactions.length - 1].title,
            // DateFormat.yMd()
            //     .format(_userTransactions[_userTransactions.length - 1].date),
            ),
        CuriositiesCard(curiosities[curiositiesIndex], nextCuriosities,
            previousCuriosities),
        Location(),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   children: <Widget>[
        //     MainButton(
        //       buttonName: 'Aktualności',
        //       buttonAction: _showNewsList,
        //     ),
        //     MainButton(
        //       buttonName: 'Ciekawostki',
        //       buttonAction: _showCuriositiesList,
        //     ),
        //   ],
        // )
      ],
    );
  }

  // Widget _goToNewsList() {
  //   return Column(
  //     children: <Widget>[
  //       Container(
  //         width: double.infinity,
  //         height: 300,
  //         child: TransactionList(_userTransactions, _deleteTransaction),
  //       ),
  //       RaisedButton(
  //           child: Icon(Icons.add),
  //           elevation: 5.0,
  //           color: Theme.of(context).accentColor,
  //           shape: RoundedRectangleBorder(
  //             borderRadius: new BorderRadius.circular(10.0),
  //             side: BorderSide(color: Colors.black),
  //           ),
  //           padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
  //           onPressed: () => _startAddNewTransaction(context)),
  //     ],
  //   );
  // }

  // Widget _goToCuriositiesList() {
  //   return Column(
  //     children: <Widget>[
  //       Container(
  //         width: double.infinity,
  //         child: TransactionList(_userTransactions, _deleteTransaction),
  //       ),
  //       RaisedButton(
  //           child: Icon(Icons.add),
  //           elevation: 5.0,
  //           color: Theme.of(context).accentColor,
  //           shape: RoundedRectangleBorder(
  //             borderRadius: new BorderRadius.circular(10.0),
  //             side: BorderSide(color: Colors.black),
  //           ),
  //           padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
  //           onPressed: () => _startAddNewTransaction(context)),
  //     ],
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Container(
          color: Theme.of(context).backgroundColor,
          child: _showHomePage(),
          // child: (_indexHomeNavigation == 0)
          //     ? _showHomePage()
          //     : (_indexHomeNavigation == 1)
          //         ? _goToNewsList()
          //         : _goToCuriositiesList(),
        ),
      ),
    );
  }

  final curiosities = [
    'Póki co ustanowiono 23 parki narodowe w Polsce, ale ich liczba może w przyszłości wzrosnąć.',
    'Jednym z planowanych nowych może być Jurajski Park Narodowy, który objąć ma część Wyżyny Krakowsko-Częstochowskiej.',
    'Pierwszym ustanowionym parkiem narodowym w Polsce był Pieniński Park Narodowy otwarty w 1932 roku.',
    // 'Jednym z najciekawszych jest Słowiński Park Narodowy z imponującymi wydmami.',
    'Park Narodowy Gór Stołowych kojarzy się przede wszystkim z widokiem Szczelińca, który złośliwi nazywają polskim Uluru.',
    // 'Parki Narodowe w Polsce zajmują około 1% powierzchni - to niedużo. Największy - Biebrzański Park Narodowy - zajmuje nieco poniżej 60 tys. hektarów.',
    'Najchętniej odwiedzanym z polskich parków jest Tatrzański Park Narodowy - cel zarówno letnich, jak i zimowych wycieczek',
    'Najrzadziej odwiedzany, choć niesłusznie, jest Narwiański Park Narodowy - trafia tam ledwie 12 tysięcy osób rocznie.'
  ];


}
