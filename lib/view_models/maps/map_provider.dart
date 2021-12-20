import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';
import 'package:cowin_1/models/data.dart';
import 'package:cowin_1/models/data_cases.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MapProvider {
  Future<Set<Marker>> loadMarkerHospital(BuildContext context) async {
    Set<Marker> _markersHospital = {};
    try {
      var icon = await BitmapDescriptor.fromAssetImage(
          ImageConfiguration(devicePixelRatio: 3.2, size: Size(8, 8)),
          "assets/icons/ic_map_hospital.png");
      listLocationHospital.forEach((item) async {
        _markersHospital.add(
          Marker(
              markerId: MarkerId('Hospital_${item["id"]}'),
              icon: icon,
              position: LatLng(item["lat"] ?? 0.0, item["lng"] ?? 0.0),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => dialogInfoMarker(
                          context,
                          "Tên bệnh viện: ",
                          item["name"],
                          item["address"],
                        ));
              }),
        );
      });
    } catch (e) {
      print(e);
    }
    return _markersHospital;
  }

  Future<Set<Marker>> loadMarkerCases(BuildContext context) async {
    Set<Marker> _markerCases = {};
    try {
      var icon = await BitmapDescriptor.fromAssetImage(
          ImageConfiguration(devicePixelRatio: 3.2, size: Size(8, 8)),
          "assets/icons/ic_cases.png");

      dataCases.forEach((item) {
        _markerCases.add(Marker(
          markerId: MarkerId('case${item["id"]}'),
          icon: icon,
          position: LatLng(item["lat"] ?? 0.0, item["lng"] ?? 0.0),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) => dialogInfoMarker(
                    context,
                    "Khu vực\nphong tỏa: ",
                    item["name"],
                    item["address"],
                  ));
            },
        ));
      });
    } catch (e) {}
    return _markerCases;
  }

  Widget dialogInfoMarker(
    context,
    title,
    name,
    address,
  ) {
    return Dialog(
      backgroundColor: Colors.white,
      elevation: 0,
      child: Container(
        height: 200.h,
        decoration: BoxDecoration(
            color: cwColor2, borderRadius: BorderRadius.circular(10.h)),
        child: Column(
          children: [
            Container(
              height: 50.h,
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      name,
                      style: kText18Bold_3,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 30.w,
                      height: 30.h,
                      child: Icon(
                        Icons.clear,
                        color: cwColor4,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Color(0xFFF2F2F2),
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Container(
                            width: 90.w,
                            alignment: Alignment.centerLeft,
                            child: Text(
                              title,
                              style: kText14Normal_4,
                            )),
                        Expanded(
                          child: Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                name,
                                style: kText14Normal_3,
                              )),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          width: 90.w,
                          child: Text(
                            "Địa chỉ: ",
                            style: kText14Normal_4,
                          ),
                        ),
                        Flexible(
                            child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            address??"",
                            style: kText14Normal_3,
                          ),
                        ))
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 50.h,
            ),
          ],
        ),
      ),
    );
  }
}
