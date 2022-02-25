import 'package:cowin_1/models/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
              _headerBuilder(),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Text(
                  "Take care of patient",
                  style: kText35Bold_7,
                ),
              ),
              SizedBox(height: 15.h),
              Container(
                height: 280.h,
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: listTakeCareOfPatient.length,
                    itemBuilder: (_, index) {
                      var item = listTakeCareOfPatient[index];
                      return Container(
                        height: 275.h,
                        width: 240.w,
                        margin: EdgeInsets.only(right: 20.w),
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
                  "Recipes during epidemic season",
                  style: kText35Bold_7,
                ),
              ),
              SizedBox(height: 5.h),
              Container(
                height: 120.h * listRecipes.length,
                child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    scrollDirection: Axis.vertical,
                    itemCount: listRecipes.length,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (_, index) {
                      var item = listRecipes[index];
                      return Container(
                        height: 100.h,
                        margin: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 10.h),
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
                            Flexible(
                                child:
                                    Text(item["title"], style: kText18Bold_3)),
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
      height: 290.h,
      margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xFFFFE490),
            borderRadius: BorderRadius.circular(15.h)),
        child: Column(
          children: [
            Container(
              height: 180.h,
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Covid \nprevention",
                    style: kText35Bold_7,
                  ),
                  Container(
                      child: Image.asset(
                          "assets/images/woman-surrounded-by-coronavirus.png"))
                ],
              ),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.only(left: 10.w),
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 215.w,
                    height: 90.h,
                    margin: EdgeInsets.symmetric(horizontal: 10.w),
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                    decoration: BoxDecoration(
                        color: Color(0xFFF2CD5D),
                        borderRadius: BorderRadius.circular(15.h)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
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
                        ),
                        Container(
                            alignment: Alignment.center,
                            child:
                                SvgPicture.asset("assets/icons/see_more.svg"))
                      ],
                    ),
                  ),
                  Container(
                    width: 215.w,
                    height: 90.h,
                    margin: EdgeInsets.symmetric(horizontal: 10.w),
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                    decoration: BoxDecoration(
                        color: Color(0xFFF2CD5D),
                        borderRadius: BorderRadius.circular(15.h)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
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
                                  TextSpan(text: " Adult", style: kText35Bold_7)
                                ]))
                          ],
                        ),
                        Container(
                            alignment: Alignment.center,
                            child:
                                SvgPicture.asset("assets/icons/see_more.svg")),
                      ],
                    ),
                  ),
                  Container(
                    width: 215.w,
                    height: 90.h,
                    margin: EdgeInsets.symmetric(horizontal: 10.w),
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                    decoration: BoxDecoration(
                        color: Color(0xFFF2CD5D),
                        borderRadius: BorderRadius.circular(15.h)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
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
                                  TextSpan(text: " Child", style: kText35Bold_7)
                                ]))
                          ],
                        ),
                        Container(
                            alignment: Alignment.center,
                            child:
                                SvgPicture.asset("assets/icons/see_more.svg")),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
