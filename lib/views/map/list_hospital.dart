import 'package:cowin_1/models/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';

class ListHospital extends StatelessWidget {
  const ListHospital({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEFEFE),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
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
                                  child: Image.asset(
                                      "assets/icons/ic_hospital.png"),
                                ),
                                SizedBox(
                                  width: 15.w,
                                ),
                                RichText(
                                    text: TextSpan(
                                        text: "Hospital",
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
                    height: 35.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Text(
                              "6",
                              style: kText18Bold_3.copyWith(
                                  fontSize: ScreenUtil().setSp(24)),
                            ),
                            Text(
                              " locations",
                              style: kText14Normal_3.copyWith(
                                  fontSize: ScreenUtil().setSp(18)),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              "Nearly",
                              style: kText18Normal_4,
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: listLocationHospital.length,
                  padding: EdgeInsets.only(top: 5.h),
                  itemBuilder: (context, index) {
                    var item = listLocationHospital[index];
                    return InkWell(
                      onTap: () {
                        Navigator.pop(context, item);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: cwColor2,
                            borderRadius: BorderRadius.circular(12.r),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xFFA6A5A5),
                                  blurRadius: 5,
                                  offset: Offset(0, 0))
                            ]),
                        margin: EdgeInsets.only(
                            left: 20.w, right: 20.w, bottom: 20.h),
                        padding: EdgeInsets.all(8.h),
                        height: 120.h,
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50.r),
                              child: Container(
                                height: 85.h,
                                width: 85.h,
                                color: Colors.blue,
                                child: Image.asset(
                                    "assets/images/img_hospital.png",
                                    fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(
                              width: 12.w,
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: 10.h, bottom: 10.h, right: 5.w),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            item["name"],
                                            style: kText18Bold_3,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          SizedBox(
                                            height: 3.h,
                                          ),
                                          Text(
                                            item["address"],
                                            style: kText14Normal_3,
                                            softWrap: true,
                                          ),
                                        ]),
                                    Container(
                                      height: 20.h,
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 25.h,
                                            width: 80.w,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                color: Color(0xFFF2F2F2),
                                                borderRadius:
                                                    BorderRadius.circular(8.h)),
                                            child: Text(
                                              "Quick Test",
                                              style: kText14Normal_4,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20.w,
                                          ),
                                          Container(
                                            height: 25.h,
                                            width: 80.w,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                color: Color(0xFFF2F2F2),
                                                borderRadius:
                                                    BorderRadius.circular(8.h)),
                                            child: Text(
                                              "PCR Test",
                                              style: kText14Normal_4,
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
