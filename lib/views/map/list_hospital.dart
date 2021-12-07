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
      backgroundColor: Color(0xFFFCFBFB),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              height: 170.h,
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  Container(
                    height: 130.h,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(top: 60.h, left: 30.w),
                            child: Row(
                              children: [
                                Container(
                                  height: 60.h,
                                  width: 60.w,
                                  padding: EdgeInsets.all(5.h),
                                  decoration: BoxDecoration(
                                      color: cwColor2,
                                      borderRadius: BorderRadius.circular(8.r),
                                      boxShadow: [
                                        BoxShadow(
                                            color: cwColor4,
                                            blurRadius: 10,
                                            offset: Offset(0, 5))
                                      ]),
                                  child: Image.asset(
                                      "assets/icons/ic_hospital.png"),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                RichText(
                                    text: TextSpan(
                                        text: "Hospital",
                                        style: kText28Bold_3,
                                        children: [
                                      TextSpan(
                                          text: "\nDistrict 5",
                                          style: kText14Normal_4)
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
                            margin: EdgeInsets.only(top: 10.h),
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
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Text(
                              "6",
                              style: kText16Bold_3,
                            ),
                            Text(
                              " locations",
                              style: kText14Normal_3,
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              "Nearly",
                              style: kText16Normal_4,
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
                                  color: cwColor4,
                                  blurRadius: 5,
                                  offset: Offset(0, 0))
                            ]),
                        margin: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 5.h),
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
                                child: Image.asset("assets/images/img_hospital.png",fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(
                              width: 12.w,
                            ),
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item["name"],
                                  style: kText16Normal_3,
                                ),
                                Text(
                                  item["address"],
                                  style: kText14Normal_4,
                                ),
                                Container(
                                  height: 20.h,
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 25.h,
                                        width: 80.w,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: Color(0xFFE2E2E2),
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
                                            color: Color(0xFFE2E2E2),
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
                            ))
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
