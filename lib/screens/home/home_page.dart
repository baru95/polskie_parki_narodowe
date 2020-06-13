import 'package:flutter/material.dart';

import '../../services/news_provider.dart';
// import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import 'curiosities.dart';
import 'location_card.dart';
import 'news_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        // NewsCard(products[0].title, DateFormat.yMd().format(products[0].date)),
        NewsCard(products[0].title, '15/5/2020'),
        CuriositiesCard(curiosities[curiositiesIndex], nextCuriosities,
            previousCuriosities),
        Location()
      ],
    );
  }

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
