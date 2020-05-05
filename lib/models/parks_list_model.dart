import 'package:google_maps_flutter/google_maps_flutter.dart';

class Park {
  String parkName;
  String address;
  String description;
  String image;
  LatLng locationCoords;
  int phone;

  Park({
    this.parkName,
    this.address,
    this.description,
    this.locationCoords,
    this.image,
    this.phone,
  });
}
