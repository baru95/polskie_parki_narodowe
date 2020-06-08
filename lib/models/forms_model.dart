import 'entry_model.dart';

class Forms {
  List<Entry> get parkList2 {
    return dataForms;
  }

  Forms();

  final List<Entry> dataForms = <Entry>[
    Entry(
      'Podaj swoją płeć:',
      <Entry>[
        Entry('kobieta'),
        Entry('mężczyzna'),
      ],
    ),
    Entry(
      'Podaj swój wiek:',
      <Entry>[
        Entry('15-19'),
        Entry('20-24'),
        Entry('25-29'),
        Entry('30-39'),
        Entry('40-49'),
        Entry('50-59'),
        Entry('60-65'),
        Entry('66 i więcej'),
      ],
    ),
    Entry(
      'Podaj swoje wykształcenie:',
      <Entry>[
        Entry('podstawowe'),
        Entry('zawodowe'),
        Entry('średnie ogólnokształcące'),
        Entry('średnie i policealne'),
        Entry('wyższe'),
      ],
    ),
    Entry(
      'Zamieszkanie:',
      <Entry>[
        Entry('wieś'),
        Entry('miasta do 20 tys'),
        Entry('miasta 20-199 tys'),
        Entry('miasta 200-499 tys'),
        Entry('miasta powyżej 500 tys'),
      ],
    ),
    Entry(
      'Urodzony w kwartale:',
      <Entry>[
        Entry('I'),
        Entry('II'),
        Entry('III'),
        Entry('IV'),
      ],
    ),
    Entry(
      'Czy masz jakieś zwierzątko domowe?',
      <Entry>[
        Entry('tak'),
        Entry('nie'),
      ],
    ),
  ];
}
