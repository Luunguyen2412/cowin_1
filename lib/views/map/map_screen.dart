import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';
import 'package:cowin_1/view_models/maps/map_provider.dart';
import 'package:cowin_1/views/map/list_hospital.dart';
import 'package:cowin_1/views/map/search_screen.dart';
import 'package:cowin_1/views/map/widgets/typeSearch.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
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
    await currentLocation.getLocation().then((location) {
      _controller!
          .animateCamera(CameraUpdate.newCameraPosition(new CameraPosition(
        target: LatLng(location.latitude ?? 0.0, location.longitude ?? 0.0),
        zoom: 18.0,
      )));
      setState(() {});
    });
  }

  void moveLocation({lat, lng}) {
    _controller!
        .animateCamera(CameraUpdate.newCameraPosition(new CameraPosition(
      target: LatLng(lat ?? 0.0, lng ?? 0.0),
      zoom: 18.0,
    )));
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //getLocation();
    loadInit();
  }

  loadInit() async {
    var markerHospital = await MapProvider().loadMarkerHospital(context);
    var markerCases = await MapProvider().loadMarkerCases(context);
    markerHospital.forEach((element) {
      _marker.add(element);
    });

    markerCases.forEach((element) {
      _marker.add(element);
    });
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            GoogleMap(
              zoomControlsEnabled: false,
              initialCameraPosition: _kGooglePlex,
              myLocationEnabled: true,
              indoorViewEnabled: true,
              markers: _marker,
              mapType: MapType.terrain,
              onMapCreated: (GoogleMapController controller) {
                _controller = controller;
                getLocation();
              },
            ),
            Container(
                height: MediaQuery.of(context).size.height,
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.only(
                  bottom: 150.h
                ),
                child: Container(
                  height: 50.h,
                  margin: EdgeInsets.symmetric(horizontal: 20.w),
                  decoration: BoxDecoration(
                    color: Color(0xFF2198E7),
                      borderRadius:
                          BorderRadius.circular(
                              10.h)),
                  padding: EdgeInsets.only(
                      left: 10.h, bottom: 7.h),
                  child: GestureDetector(
                    onTap: () async {
                      var result = await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  SearchScreen()));
                      if (result != null)
                        moveLocation(
                            lat: result["lat"],
                            lng: result["lng"]);
                    },
                    child: Container(
                        color: Colors.transparent,
                        alignment:
                            Alignment.centerLeft,
                        padding:
                            EdgeInsets.only(top: 4.h),
                        child: Row(
                          children: [
                            Icon(Icons.search,color: Colors.white),
                            Padding(
                              padding:  EdgeInsets.only(right: 5.w),
                              child: Text(
                                "Search for place",
                                style: kText16Normal_2,
                              ),
                            ),
                          ],
                        )),
                  ),
                )),
           
           
            Container(
              height: MediaQuery.of(context).size.height,
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 140.h,
                padding: EdgeInsets.only(left: 30.w),
                decoration: BoxDecoration(
                    color: cwColor2,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.r),
                      bottomRight: Radius.circular(20.r),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFFDAD3D3),
                          blurRadius: 10,
                          offset: Offset(0, 1))
                    ]),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 15.h),
                      height: 100.h,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          TypeSearch(
                            title: "Hospital",
                            icon: "assets/icons/ic_hospital.png",
                            onTap: () async {
                              var result = await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ListHospital()));

                              if (result != null)
                                moveLocation(
                                    lat: result["lat"], lng: result["lng"]);
                            },
                          ),
                          TypeSearch(
                            title: "Pharmacies",
                            icon: "assets/icons/ic_pharmacies.png",
                            onTap: () async {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ShowListData(
                                    name: "Pharmacies",
                                    icon: "assets/icons/ic_pharmacies.png",
                                  ),
                                ),
                              );
                            },
                          ),
                          TypeSearch(
                            title: "Grocery",
                            icon: "assets/icons/ic_grocery.png",
                            onTap: () async {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ShowListData(
                                    name: "Grocery",
                                    icon: "assets/icons/ic_grocery.png",
                                  ),
                                ),
                              );
                            },
                          ),
                          TypeSearch(
                            title: "Gas Station",
                            icon: "assets/icons/ic_gas_station.png",
                            onTap: () async {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ShowListData(
                                    name: "Gas Station",
                                    icon: "assets/icons/ic_gas_station.png",
                                  ),
                                ),
                              );
                            },
                          ),
                          TypeSearch(
                            title: "Test Covid-19",
                            icon: "assets/icons/ic_test_covid.png",
                            onTap: () async {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ShowListData(
                                    name: "Test Covid-19",
                                    icon: "assets/icons/ic_test_covid.png",
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ShowListData extends StatefulWidget {
  final name;
  final icon;

  const ShowListData({Key? key, this.name, this.icon}) : super(key: key);

  @override
  _ShowListDataState createState() => _ShowListDataState();
}

class _ShowListDataState extends State<ShowListData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEFEFE),
      body: Container(
        height: 210.h,
        padding: EdgeInsets.only(left: 30.w, right: 20.w),
        child: Column(
          children: [
            Container(
              height: 130.h,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 60.h),
                      child: Row(
                        children: [
                          Container(
                            height: 70.h,
                            width: 70.h,
                            decoration: BoxDecoration(
                                color: cwColor2,
                                borderRadius: BorderRadius.circular(8.r),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0xFFDAD3D3),
                                      blurRadius: 10,
                                      offset: Offset(0, 5))
                                ]),
                            child: Image.asset("${widget.icon}"),
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          RichText(
                              text: TextSpan(
                                  text: "${widget.name}",
                                  style: kText30Bold_3,
                                  children: [
                                TextSpan(
                                    text: "\nDistrict 5",
                                    style: kText18Normal_4)
                              ]))
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 45.h,
                      width: 45.h,
                      margin: EdgeInsets.only(top: 20.h),
                      alignment: Alignment.topRight,
                      child: Icon(
                        Icons.cancel_outlined,
                        color: cwColor4,
                        size: 40.h,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Text(
              "Không có dữ liệu",
              style: kText16Normal_4,
            )
          ],
        ),
      ),
    );
  }
}
