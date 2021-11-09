import 'package:cowin_1/models/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapProvider {
  Future<Set<Marker>> loadMarkerHospital() async {
    Set<Marker> _markersHospital = {};
    try {
      var icon = await BitmapDescriptor.fromAssetImage(
          ImageConfiguration(devicePixelRatio: 3.2,size: Size(20,20)),
          "assets/icons/ic_hospital.png");
      listLocationHospital.forEach((item) async {
        _markersHospital.add(Marker(
            markerId: MarkerId('Hospital_${item["id"]}'),
            icon: icon,
            position:
                LatLng(item["latitude"] ?? 0.0, item["longitude"] ?? 0.0)));
      });
    } catch (e) {
      print(e);
    }
    return _markersHospital;
  }
}
