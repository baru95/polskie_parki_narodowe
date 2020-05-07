import 'package:google_maps_flutter/google_maps_flutter.dart';

import './parks_model.dart';

class Parks {
  List<Park> get parkList2 {
    return parksList;
  }

  Parks();

  List<Park> parksList = [
    Park(
      parkName: 'Babiogórski Park Narodowy',
      address: 'Zawoja',
      description:
          'Szlaki wędrowne w leśnym rezerwacie przyrody rozciągającym się wokół 1725-metrowej Babiej Góry.',
      locationCoords: LatLng(40.745803, -73.988213),
      image:
          // "../../assets/images/aktualności.jpg"
          'https://lh5.googleusercontent.com/p/AF1QipMMRGYx31JxiNgA3Tl3MnMCcgJQ_CFISGsFvV0=w408-h271-k-no',
      phone: '338 775 110',
      moreDescription:
          'Polski park narodowy utworzony w 1954 roku na terenie ówczesnego województwa krakowskiego. Znajduje się on w Polsce południowej, w powiecie suskim i nowotarskim przy granicy ze Słowacją.',
      area: '33,92 km²',
      image2: 'http://www.bgpn.pl/images/gallery/DSC05239.jpg',
      image3: 'http://www.bgpn.pl/images/gallery/DSC00221.jpg',
      image4: 'http://www.bgpn.pl/images/gallery/DSC03874.jpg',
      image5: 'http://www.bgpn.pl/images/gallery/DSC08712.jpg',
    ),
    Park(
      parkName: 'Białowieski Park Narodowy',
      address: 'Białowieża',
      description:
          'Obszar chroniony znany z prastarego lasu i dużej populacji żubrów, a także szlaków pieszych i rowerowych.',
      locationCoords: LatLng(40.745803, -73.988213),
      image:
          'https://lh5.googleusercontent.com/p/AF1QipOmhF5PNRH2ZoWy9ojA2-xHWGSeFsTS6L6uHDu7=w408-h306-k-no',
      phone: '856 812 306',
      moreDescription: 'Położony w północno-wschodniej części Polski, w województwie podlaskim, utworzony z Nadleśnictwa Rezerwat jako Park Narodowy w Białowieży obowiązującym od 11 sierpnia 1932 r.',
      area: '105,2 km²',
      image2: 'https://bpn.com.pl/images/stories/gallery/zubry2/Klosowscy12.jpg',
      image3: 'https://bpn.com.pl/images/stories/gallery/krajobrazy/2005_10_02DSC_0098.jpg',
      image4: 'https://bpn.com.pl/images/stories/gallery/puszcza1/obrazek-1fd63d-8.jpg',
      image5: 'https://bpn.com.pl/images/stories/gallery/puszcza2/jk_a20.jpg',
    ),
    Park(
      parkName: 'Biebrzański Park Narodowy',
      address: 'Goniądz',
      description:
          'Chroniony obszar mokradeł i lasów ze szlakami turystycznymi oraz wieloma gatunkami ptaków, ssaków i płazów.',
      locationCoords: LatLng(40.745803, -73.988213),
      image:
          'https://lh5.googleusercontent.com/p/AF1QipNOl2E-NZrWREKo_DdqUCHo90qYtveWSrcDEGfH=w408-h306-k-no',
      phone: '857 380 620',
      moreDescription: 'utworzony 9 września 1993. Największy Park w Polsce, położony na terenach Kotliny Biebrzańskiej w województwie podlaskim. Siedziba Parku znajduje się w Osowcu-Twierdzy.',
      area: '592,2 km²',
      image2: 'https://www.biebrza.org.pl/grafika,1083,fot-cwerpachowski.jpg',
      image3: 'https://www.biebrza.org.pl/grafika,1064,fot-cwerpachowski.jpg',
      image4: 'https://www.biebrza.org.pl/grafika,1060,fot-cwerpachowski.jpg',
      image5: 'https://www.biebrza.org.pl/grafika,1059,fot-cwerpachowski.jpg',
    ),
    Park(
      parkName: 'Bieszczadzki Park Narodowy',
      address: 'Ustrzyki Górne',
      description:
          'Na jego obszarze leży najbardziej na południe wysunięty punkt Polski, położony przy granicy z Ukrainą.',
      locationCoords: LatLng(40.745803, -73.988213),
      image:
          'https://lh5.googleusercontent.com/p/AF1QipN5dNnXKeoImeaEZWSWIsGPIVxf5ipxCLOGGi-Z=w408-h270-k-no',
      phone: '13 461 06 10',
      moreDescription: 'Utworzony w 1973 roku. W 1992 roku stał się częścią Międzynarodowego Rezerwatu Biosfery „Karpaty Wschodnie”. Jest trzecim co do wielkości parkiem narodowym na terenie Polski.',
      area: '292 km²',
      image2: '',
      image3: '',
      image4: '',
      image5: '',
    ),
    Park(
      parkName: 'Park Narodowy \'Bory Tucholskie\'',
      address: 'Charzykowy',
      description:
          'Park narodowy z różnorodną zwierzyną żyjącą na torfowiskach, w lasach sosnowych i w licznych jeziorach.',
      locationCoords: LatLng(40.745803, -73.988213),
      image:
          'https://lh5.googleusercontent.com/p/AF1QipN-Dt3AMU25GpCXpo_Oc56AQoKeTScr30XM4rY6=w426-h240-k-no',
      phone: '523 988 397',
      moreDescription: 'Znajduje się na terenie województwa pomorskiego, w powiecie chojnickim, w granicach gmin Chojnice i Brusy. Powierzchnia leśna to 1,9% całkowitej powierzchni Borów Tucholskich.',
      area: '46,13 km²',
      image2: '',
      image3: '',
      image4: '',
      image5: '',
    ),
    Park(
      parkName: 'Drawieński Park Narodowy',
      address: 'Drawno',
      description:
          'Duży park narodowy słynący z lasów, jezior, rzek i licznych gatunków ptaków oraz miejsc do spływów kajakowych.',
      locationCoords: LatLng(40.745803, -73.988213),
      image:
          'https://lh5.googleusercontent.com/p/AF1QipNCrgrooTY3tir5ILdNAfk98_g_LbeHO73rpvLp=w408-h306-k-no',
      phone: '95 768 20 51',
      moreDescription: 'Lasy na terenie Parku zajmują 83% powierzchni. W większości są to lasy bukowe i dębowo-bukowe, oraz bory sosnowe. Ponadto 10% powierzchni wodnej Parku zajmują jeziora wraz z rzekami.',
      area: '115,36 km²',
      image2: '',
      image3: '',
      image4: '',
      image5: '',
    ),
    Park(
      parkName: 'Tatrzański Park Narodowy',
      address: 'Zakopane',
      description:
          'Rozległy górzysty park narodowy: jeziora, jaskinie, dzika przyroda i kilometry malowniczych szlaków.',
      locationCoords: LatLng(40.745803, -73.988213),
      image:
          'https://lh5.googleusercontent.com/p/AF1QipMrJymlSc31QU2mLfhXxo55JlJDdeQ2HllCtIxO=w408-h272-k-no',
      phone: '18 202 32 00',
      moreDescription: 'Utworzony z dniem 1 stycznia 1955 roku przez rozporządzenie Rady Ministrów z 30 października 1954 r. Jego odpowiednikiem po stronie słowackiej jest TANAP.',
      area: '211,64 km²',
      image2: '',
      image3: '',
      image4: '',
      image5: '',
    ),
  ];
}
