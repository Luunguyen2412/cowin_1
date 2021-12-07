import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';
import 'package:flutter/cupertino.dart';
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
      height: 160.h,
      decoration: BoxDecoration(
          color: cwColor2,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.r),
            bottomRight: Radius.circular(20.r),
          )),
      padding: EdgeInsets.only(top: 20.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: 30.w,
                  padding: EdgeInsets.only(left: 15.w, top: 10.h),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: cwColor4,
                  )),
              Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: SvgPicture.asset("assets/icons/ic_picker.svg"),
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
                              height: 40.h,
                              decoration: BoxDecoration(
                                  border: Border.all(color: cwColor1),
                                  borderRadius: BorderRadius.circular(10.h)),
                              padding: EdgeInsets.only(left: 10.h,bottom:2.h),
                              child: TextFormField(
                                textAlignVertical: TextAlignVertical.center,
                                decoration: InputDecoration(
                                    hintText: "Your location",
                                    hintStyle: kText16Normal_4,
                                    border: InputBorder.none),
                              ),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 5.w, right: 5.w),
                              child: SvgPicture.asset(
                                  "assets/icons/more-horizontal.svg"))
                        ],
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 40.h,
                                decoration: BoxDecoration(
                                    border: Border.all(color: cwColor1),
                                    borderRadius: BorderRadius.circular(10.h)),
                                padding: EdgeInsets.only(left: 10.h,bottom: 2.h),
                                child: TextFormField(
                                  textAlignVertical: TextAlignVertical.center,
                                  decoration: InputDecoration(
                                      hintText: "Bệnh viện Thống Nhất",
                                      hintStyle: kText16Normal_4,
                                      border: InputBorder.none),
                                ),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(right: 5.w),
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
