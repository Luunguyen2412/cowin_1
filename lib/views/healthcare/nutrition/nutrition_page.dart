import 'package:cowin_1/models/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NutritionPage extends StatefulWidget {
  const NutritionPage({Key? key}) : super(key: key);

  @override
  _NutritionPageState createState() => _NutritionPageState();
}

class _NutritionPageState extends State<NutritionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFBFB),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 12.h),
              _headerBuilder(),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Text(
                  "Take care of patient",
                  style: kText35Bold_7,
                ),
              ),
              SizedBox(height: 12.h),
              Container(
                height: 300.h,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: listTakeCareOfPatient.length,
                    itemBuilder: (_, index) {
                      var item = listTakeCareOfPatient[index];
                      return Container(
                        height: 293.h,
                        width: 255.w,
                        margin: EdgeInsets.symmetric(horizontal: 10.w),
                        decoration: BoxDecoration(
                          color: Color(item["backgroundColor"]),
                          borderRadius: BorderRadius.circular(15.h),
                        ),
                        child: Stack(
                          children: [
                            Container(
                                alignment: Alignment.bottomCenter,
                                child: Image.asset(item["image"])),
                            Column(
                              children: [
                                SizedBox(
                                  height: 20.h,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.w),
                                  child: Text(
                                    item["name"],
                                    style: kText28Bold_2.copyWith(
                                        color: Color(item["titleColor"])),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              SizedBox(height: 40.h),
              Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Text(
                  "Recipes during the epidemic season",
                  style: kText35Bold_7,
                ),
              ),
              SizedBox(height: 12.h),
              Container(
                height: 120.h*listRecipes.length,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: listRecipes.length,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (_, index) {
                      var item = listRecipes[index];
                      return Container(
                        height: 100.h,
                        margin: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.h),
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 100.h,
                              width: 100.h,
                              alignment: Alignment.bottomCenter,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15.h),
                                child: item["image"] != null
                                    ? Image.asset(item["image"])
                                    : Container(),
                              ),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Flexible(child: Text(item["title"], style: kText16Normal_3)),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _headerBuilder() {
    return Container(
      height: 285.h,
      margin: EdgeInsets.only(left: 15.w),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            height: 283.h,
            width: 480.w,
            decoration: BoxDecoration(
                color: Color(0xFFFFE490),
                borderRadius: BorderRadius.circular(15.h)),
            child: Column(
              children: [
                Expanded(
                    child: Row(
                  children: [
                    Container(
                      width: 200.w,
                      child: Text(
                        "Covid prevention",
                        style: kText35Bold_7,
                      ),
                    ),
                    Image.asset(
                        "assets/images/woman-surrounded-by-coronavirus.png")
                  ],
                )),
                Container(
                  height: 120.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 215.w,
                        height: 90.h,
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.w, vertical: 10.h),
                        decoration: BoxDecoration(
                            color: Color(0xFFF2CD5D),
                            borderRadius: BorderRadius.circular(15.h)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Nutritional formulas",
                                  style: kText15Normal_7,
                                ),
                                Text(
                                  "4-5-1",
                                  style: kText35Bold_7,
                                )
                              ],
                            )),
                            Container(
                                alignment: Alignment.center,
                                child: SvgPicture.asset(
                                    "assets/icons/see_more.svg"))
                          ],
                        ),
                      ),
                      Container(
                        width: 215.w,
                        height: 90.h,
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.w, vertical: 10.h),
                        decoration: BoxDecoration(
                            color: Color(0xFFF2CD5D),
                            borderRadius: BorderRadius.circular(15.h)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Nutritional formulas",
                                  style: kText15Normal_7,
                                ),
                                RichText(
                                    text: TextSpan(
                                        text: "for ",
                                        style: kText15Normal_7,
                                        children: [
                                      TextSpan(
                                          text: " Adult", style: kText35Bold_7)
                                    ]))
                              ],
                            )),
                            Container(
                                alignment: Alignment.center,
                                child: SvgPicture.asset(
                                    "assets/icons/see_more.svg"))
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 15.w,
          )
        ],
      ),
    );
  }
}
