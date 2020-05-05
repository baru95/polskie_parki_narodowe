import 'package:polskie_parki_narodowe/models/parks_list_model.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ParksList {
  List<Park> get parkList2 {
    return parksList;
  }

  ParksList();

  List<Park> parksList = [
    Park(
      parkName: 'Babiogórski Park Narodowy',
      address: 'adres',
      description:
          'Szlaki wędrowne w leśnym rezerwacie przyrody rozciągającym się wokół 1725-metrowej Babiej Góry.',
      locationCoords: LatLng(40.745803, -73.988213),
      image:
      // "../../assets/images/aktualności.jpg"
          'https://lh5.googleusercontent.com/p/AF1QipMMRGYx31JxiNgA3Tl3MnMCcgJQ_CFISGsFvV0=w408-h271-k-no',
    ),
    Park(
      parkName: 'Białowieski Park Narodowy',
      address: 'adres',
      description:
          'Obszar chroniony znany z prastarego lasu i dużej populacji żubrów, a także szlaków pieszych i rowerowych.',
      locationCoords: LatLng(40.745803, -73.988213),
      image:
          'https://lh5.googleusercontent.com/p/AF1QipOmhF5PNRH2ZoWy9ojA2-xHWGSeFsTS6L6uHDu7=w408-h306-k-no',
    ),
    Park(
      parkName: 'Biebrzański Park Narodowy',
      address: 'adres',
      description:
          'Chroniony obszar mokradeł i lasów ze szlakami turystycznymi oraz wieloma gatunkami ptaków, ssaków i płazów.',
      locationCoords: LatLng(40.745803, -73.988213),
      image:
          'https://lh5.googleusercontent.com/p/AF1QipNOl2E-NZrWREKo_DdqUCHo90qYtveWSrcDEGfH=w408-h306-k-no',
    ),
    Park(
      parkName: 'Bieszczadzki Park Narodowy',
      address: 'adres',
      description:
          'Na jego obszarze leży najbardziej na południe wysunięty punkt Polski, położony przy granicy z Ukrainą.',
      locationCoords: LatLng(40.745803, -73.988213),
      image:
          'https://lh5.googleusercontent.com/p/AF1QipN5dNnXKeoImeaEZWSWIsGPIVxf5ipxCLOGGi-Z=w408-h270-k-no',
    ),
    Park(
      parkName: 'Park Narodowy \'Bory Tucholskie\'',
      address: 'adres',
      description:
          'Park narodowy z różnorodną zwierzyną żyjącą na torfowiskach, w lasach sosnowych i w licznych jeziorach.',
      locationCoords: LatLng(40.745803, -73.988213),
      image:
          'https://lh5.googleusercontent.com/p/AF1QipN-Dt3AMU25GpCXpo_Oc56AQoKeTScr30XM4rY6=w426-h240-k-no',
    ),
    Park(
      parkName: 'Drawieński Park Narodowy',
      address: 'adres',
      description:
          'Duży park narodowy słynący z lasów, jezior, rzek i licznych gatunków ptaków oraz miejsc do spływów kajakowych.',
      locationCoords: LatLng(40.745803, -73.988213),
      image:
          'https://lh5.googleusercontent.com/p/AF1QipNCrgrooTY3tir5ILdNAfk98_g_LbeHO73rpvLp=w408-h306-k-no',
    ),
    Park(
      parkName: 'Tatrzański Park Narodowy',
      address: 'adres',
      description:
          'Rozległy górzysty park narodowy: jeziora, jaskinie, dzika przyroda i kilometry malowniczych szlaków.',
      locationCoords: LatLng(40.745803, -73.988213),
      image:
          'https://lh5.googleusercontent.com/p/AF1QipMrJymlSc31QU2mLfhXxo55JlJDdeQ2HllCtIxO=w408-h272-k-no',
    ),
  ];
}
