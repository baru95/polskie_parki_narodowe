  var pictureStartQuiz =
      'https://www.wykop.pl/cdn/c3201142/comment_C2t5foRhkokqBDyZXPNnXWyp79gJDZLO,wat.jpg?author=gorzka&auth=e975b4b1b3963a2ebaf2a15fc080f8ff';

final questions = const [
    {
      'querstionText': 'Czym jest ekologia?',
      'answers:': [
        {
          'text':
              'Badaniem wzajemnych zależności między organizmami żywymi a ich środowiskiem',
          'score': 1
        },
        {'text': 'Nauką o ochronie środowiska', 'score': 0},
        {'text': 'Nauką o zdrowiu', 'score': 0},
        {
          'text': 'Przywracaniem równowagi biologicznej w ekosystemie',
          'score': 0
        },
      ]
    },
    {
      'querstionText':
          'Jak nazywa się obszar chroniony wokół parku narodowego?',
      'answers:': [
        {'text': 'Obwodnica', 'score': 0},
        {'text': 'Otulina', 'score': 1},
        {'text': 'Okrężnica', 'score': 0},
        {'text': 'Obwód rezerwatu', 'score': 0},
      ]
    },
    {
      'querstionText': 'Co możemy uprawiać w pobliżu mocno uczęszczanej drogi?',
      'answers:': [
        {'text': 'Grzyby', 'score': 0},
        {'text': 'Rośliny ozdobne', 'score': 1},
        {'text': 'Ziemniaki', 'score': 0},
        {'text': 'Drzewa owocowe', 'score': 0},
      ]
    },
    {
      'querstionText':
          'Nagromadzenie jakiego gazu powoduje efekt cieplarniany?',
      'answers:': [
        {'text': 'Tlenek węgla CO', 'score': 0},
        {'text': 'Argon', 'score': 0},
        {'text': 'Dwutlenek węgla CO2', 'score': 1},
        {'text': 'Freon', 'score': 0},
      ]
    },
    {
      'querstionText':
          'Jakiego koloru jest pojemnik, do którego wrzucamy szkło?',
      'answers:': [
        {'text': 'Zielony', 'score': 1},
        {'text': 'Niebieski', 'score': 0},
        {'text': 'Czerwony', 'score': 0},
        {'text': 'Żółty', 'score': 0},
      ]
    },
    {
      'querstionText': 'Co jest naturalnym wskaźnikiem czystości powietrza?',
      'answers:': [
        {'text': 'Porosty występujące na korze drzew', 'score': 1},
        {'text': 'Duża populacja pstrągów w rzekach', 'score': 0},
        {'text': 'Mchy występujące w korze drzew', 'score': 0},
        {'text': 'Duża ilość grzybów w lesie', 'score': 0},
      ]
    },
    {
      'querstionText': 'Jak nazywamy zanieczyszczenia powietrza utrzymujące się nad wielkimi miastami i strefami przemysłowymi?',
      'answers:': [
        {'text': 'Kurz', 'score': 0},
        {'text': 'Spaliny', 'score': 0},
        {'text': 'Dym', 'score': 0},
        {'text': 'Smog', 'score': 1},
      ]
    },
    {
      'querstionText': 'Które odpady powinny zostać pogniecione przed wyrzuceniem?',
      'answers:': [
        {'text': 'Szklana butelka', 'score': 0},
        {'text': 'Torba papierowa', 'score': 0},
        {'text': 'Puszka aluminiowa', 'score': 1},
        {'text': 'Pojemnik po aerozolu', 'score': 0},
      ]
    },
    {
      'querstionText': 'Co mogą powodować pyły zawarte w powietrzu?',
      'answers:': [
        {'text': 'Astmę', 'score': 1},
        {'text': 'Gruźlicę', 'score': 0},
        {'text': 'Zapalenie zatok', 'score': 0},
        {'text': 'Zapalenie płuc', 'score': 0},
      ]
    },
    {
      'querstionText': 'Biodegradacja których odpadów trwa ponad 100 lat?',
      'answers:': [
        {'text': 'Karton, foliowa torebka', 'score': 0},
        {'text': 'Gumowe rękawice, bawełniana koszulka', 'score': 0},
        {'text': 'Opona, kolorowa gazeta', 'score': 0},
        {'text': 'Szklana butelka, plastikowe pudełko', 'score': 1},
      ]
    },
    {
      'querstionText': 'Jak nazywa się proces przerabiania odpadów na nawóz?',
      'answers:': [
        {'text': 'Składowanie', 'score': 0},
        {'text': 'Kompostowanie', 'score': 1},
        {'text': 'Uzdatnianie', 'score': 0},
        {'text': 'Spalanie', 'score': 0},
      ]
    },
    {
      'querstionText': 'Czym jest złom?',
      'answers:': [
        {'text': 'Substancją szkodliwą dla powietrza', 'score': 0},
        {'text': 'Surowcem wtórnym', 'score': 1},
        {'text': 'Tworzywem sztucznym', 'score': 0},
        {'text': 'Odpadem produkcyjnym, który się nie utlenia', 'score': 0},
      ]
    },
    {
      'querstionText': 'Czym jest energia odnawialna?',
      'answers:': [
        {'text': 'Energią biomasy', 'score': 0},
        {'text': 'Energią węgla', 'score': 1},
        {'text': 'Energią wiatrową', 'score': 0},
        {'text': 'Energią geotermalną', 'score': 0},
      ]
    },
    {
      'querstionText': 'Co nazywamy recyklingiem?',
      'answers:': [
        {'text': 'Ponowne wykorzystanie odpadów w produkcji', 'score': 1},
        {'text': 'Naturalną cyrkulacją wody w przyrodzie', 'score': 0},
        {'text': 'Oczyszczaniem zanieczyszczonej wody', 'score': 0},
        {'text': 'Utylizacją toksycznych odpadów przemysłowych', 'score': 0},
      ]
    },
    {
      'querstionText': 'Co oznaczają litery ABCDEFG na etykietach urządzeń RTV i AGD?',
      'answers:': [
        {'text': 'Liczbę lat gwarancji', 'score': 0},
        {'text': 'Stopień wyposażenia danego modelu', 'score': 0},
        {'text': 'Klasę efektywności energetyczniej', 'score': 1},
        {'text': 'Liczbę wersji danego produktu', 'score': 0},
      ]
    },
        {
      'querstionText': 'Jaka jest najwyższa forma ochrony środowiska?',
      'answers:': [
        {'text': 'Parki narodowe', 'score': 1},
        {'text': 'Rezerwaty', 'score': 0},
        {'text': 'Parki krajobrazowe', 'score': 0},
        {'text': 'Strefy ochrony dostępu', 'score': 0},
      ]
    },
        {
      'querstionText': 'Jak nazywamy strefę kuli ziemskiej zamieszkałą przez organizmy żywe, w której odbywają się procesy ekologiczne?',
      'answers:': [
        {'text': 'Biosfera', 'score': 1},
        {'text': 'Biocenoza', 'score': 0},
        {'text': 'Biologia', 'score': 0},
        {'text': 'Biotop', 'score': 0},
      ]
    },
  ];