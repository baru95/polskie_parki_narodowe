import 'package:google_maps_flutter/google_maps_flutter.dart';

class Park {
  String parkName;
  String address;
  String description;
  String moreDescription;
  String image;
  LatLng locationCoords;
  String phone;
  String area;

  Park({
    this.parkName,
    this.address,
    this.description,
    this.moreDescription,
    this.locationCoords,
    this.image,
    this.phone,
    this.area,
  });
}
