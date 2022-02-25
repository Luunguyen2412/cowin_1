import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocationPicker extends StatefulWidget {
  const LocationPicker({Key? key}) : super(key: key);

  @override
  _LocationPickerState createState() => _LocationPickerState();
}

class _LocationPickerState extends State<LocationPicker> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170.h,
      decoration: BoxDecoration(
          color: cwColor2,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.r),
            bottomRight: Radius.circular(20.r),
          ),
          boxShadow: [
            BoxShadow(
                color: Color(0xFFDAD3D3), blurRadius: 10, offset: Offset(0, 1))
          ]),
      padding: EdgeInsets.only(top: 15.h, right: 20.w, bottom: 15.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: Container(
                  height: 110.h,
                  child: SvgPicture.asset("assets/icons/ic_picker.svg"),
                ),
              ),
              Expanded(
                child: Container(
                  height: 140.h,
                  width: MediaQuery.of(context).size.width - 110.w,
                  padding: EdgeInsets.only(top: 15.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 50.h,
                              decoration: BoxDecoration(
                                  border: Border.all(color: cwColor1),
                                  borderRadius: BorderRadius.circular(10.h)),
                              padding: EdgeInsets.only(left: 10.h, bottom: 7.h),
                              child: TextFormField(
                                textAlignVertical: TextAlignVertical.center,
                                decoration: InputDecoration(
                                    hintText: "Your location",
                                    hintStyle: kText16Normal_3,
                                    border: InputBorder.none),
                              ),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 10.w),
                              child: SvgPicture.asset(
                                  "assets/icons/more-horizontal.svg"))
                        ],
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 50.h,
                                decoration: BoxDecoration(
                                    border: Border.all(color: cwColor1),
                                    borderRadius: BorderRadius.circular(10.h)),
                                padding:
                                    EdgeInsets.only(left: 10.h, bottom: 7.h),
                                child: TextFormField(
                                  textAlignVertical: TextAlignVertical.center,
                                  decoration: InputDecoration(
                                      hintText: "Bệnh viện Thống Nhất",
                                      hintStyle: kText16Normal_3,
                                      border: InputBorder.none),
                                ),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(left: 5.w),
                                child: SvgPicture.asset(
                                    "assets/icons/import_export.svg"))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
