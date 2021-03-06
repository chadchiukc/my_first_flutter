import 'package:geolocator/geolocator.dart';

class Location {
  double lat;
  double lng;

  Future<void> getLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      lat = position.latitude;
      lng = position.longitude;
    } catch (err) {
      print(err);
    }
  }
}
