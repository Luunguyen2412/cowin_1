import 'dart:async';

import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/view_models/maps/map_provider.dart';
import 'package:cowin_1/views/map/widgets/typeSearch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  GoogleMapController? _controller;
  Location currentLocation = Location();
  Set<Marker> _marker = {};
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(10.7546664, 106.4150437),
    zoom: 12.0,
  );

  void getLocation() async {
    await currentLocation.getLocation().then((location){
      _controller!
          .animateCamera(CameraUpdate.newCameraPosition(new CameraPosition(
        target: LatLng(location.latitude ?? 0.0, location.longitude ?? 0.0),
        zoom: 18.0,
      )));
      setState(() {});

    });

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //getLocation();
    loadInit();
  }

  loadInit() async {
    var markerHospital = await MapProvider().loadMarkerHospital();
    markerHospital.forEach((element) {
      _marker.add(element);
    });
    print(_marker.first.position);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          GoogleMap(
            zoomControlsEnabled: false,
            initialCameraPosition: _kGooglePlex,
            myLocationEnabled: true,
            markers: _marker,
            onMapCreated: (GoogleMapController controller) {
              _controller = controller;
              getLocation();
            },
          ),
          Container(
            height: 150.h,
            color: cwColor17,
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: 30.w),
            child: Container(
              height: 100.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  TypeSearch(
                    title: "Hospital",
                    icon: "assets/icons/ic_hospital.png",
                    onTap: () {},
                  ),
                  TypeSearch(
                    title: "Pharmacies",
                    icon: "assets/icons/ic_pharmacies.png",
                    onTap: () {},
                  ),
                  TypeSearch(
                    title: "Grocery",
                    icon: "assets/icons/ic_grocery.png",
                    onTap: () {},
                  ),
                  TypeSearch(
                    title: "Gas Station",
                    icon: "assets/icons/ic_gas_station.png",
                    onTap: () {},
                  ),
                  TypeSearch(
                    title: "Test Covid-19",
                    icon: "assets/icons/ic_test_covid.png",
                    onTap: () {},
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
