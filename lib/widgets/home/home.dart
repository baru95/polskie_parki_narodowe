import 'package:flutter/material.dart';

import 'curiosities.dart';
import 'location.dart';
import 'news.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  /////////
  // int selectedItem = 0;
  // var pages = ['pierwszy', 'drugi', 'trzeci'];
  // var pageController= PageController();

  // void selectNavigation(index) {
  //   setState(() {
  //     selectedItem = index;
  //     pageController.animateToPage(selectedItem,
  //         duration: Duration(milliseconds: 200), curve: Curves.linear);
  //   });
  // }

  int _newsOption = 0;
  void _newsBatton(_newsOption) { ///////////////////////??????????????????????????????????????????
    setState(() {
      _newsOption = 1;
    });
    return _newsOption;
  }

  @override
  Widget build(BuildContext context) {
    print(_newsOption);
    return (_newsOption == 0)
        ? Container(
            color: Theme.of(context).backgroundColor,
            child: Column(
              children: <Widget>[
                News(news, _newsBatton),
                Curiosities(curiosities),
                Location(),
              ],
            ))
        : Container(child: RaisedButton(child: Text('aaa') ,onPressed: (){
          setState(() {
            _newsOption = 0;
          });
        }), );
  }

  String news =
      'Zgodnie z rekomendacją Ministra Środowiska Michała Wosia, od poniedziałku 20 kwietnia można swobodnie wchodzić na teren parków narodowych w całym kraju.';

  final curiosities = [
    'Póki co ustanowiono 23 parki narodowe w Polsce, ale ich liczba może w przyszłości wzrosnąć.',
    'Jednym z planowanych nowych może być Jurajski Park Narodowy, który objąć ma część Wyżyny Krakowsko-Częstochowskiej.'
        'Pierwszym ustanowionym parkiem narodowym w Polsce był Pieniński Park Narodowy otwarty w 1932 roku.',
    'Jednym z najciekawszych jest Słowiński Park Narodowy z imponującymi wydmami.',
    'Park Narodowy Gór Stołowych kojarzy się przede wszystkim z widokiem Szczelińca, który złośliwi nazywają polskim Uluru.',
    'Parki Narodowe w Polsce zajmują około 1% powierzchni - to niedużo. Największy - Biebrzański Park Narodowy - zajmuje nieco poniżej 60 tys. hektarów.',
    'Najchętniej odwiedzanym z polskich parków jest Tatrzański Park Narodowy - cel zarówno letnich, jak i zimowych wycieczek',
    'Najrzadziej odwiedzany, choć niesłusznie, jest Narwiański Park Narodowy - trafia tam ledwie 12 tysięcy osób rocznie.'
  ];
}
