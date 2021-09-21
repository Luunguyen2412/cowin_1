import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';
import 'package:cowin_1/common/constants/tools.dart';
import 'package:cowin_1/themes.dart';
import 'package:cowin_1/views/home/widget/card.dart';
import 'package:cowin_1/widget/covid_cases_tile.dart';
import 'package:cowin_1/widget/news_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 340.h,
                    ),
                    Text(
                      "Covid Cases",
                      style:
                          heading.copyWith(color: Colors.black, fontSize: 28),
                    ),
                    Text(
                      "Update lasted 3 minute ago",
                      style:
                          normalText.copyWith(color: kTextColor, fontSize: 16),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      height: 53,
                      width: 360,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: kWhiteColor,
                        border: Border.all(
                          color: cwColor3,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 45.h,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: GridView(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, childAspectRatio: 28 / 16),
                        children: [
                          CasesItem(
                            'Infected',
                            CustomColors.yellow,
                          ),
                          CasesItem(
                            'Death',
                            CustomColors.red,
                          ),
                          CasesItem(
                            'Recovered',
                            CustomColors.green,
                          ),
                          CasesItem(
                            'Treated',
                            CustomColors.blue,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 43.h,
                    ),
                    CardInfomation(),
                    SizedBox(
                      height: 32.h,
                    ),
                    Text(
                      "Hot news",
                      style:
                          heading.copyWith(color: Colors.black, fontSize: 28),
                    ),
                    Text(
                      "Update news about covid in the country",
                      style:
                          normalText.copyWith(color: kTextColor, fontSize: 16),
                    ),
                  ],
                ),
                Container(
                  height: 324.h,
                  width: 448.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 29.h, vertical: 27.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: cwColor1,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Cowin",
                            style: kText40Bold_4,
                          ),
                          SizedBox(
                            width: 114.w,
                          ),
                          Stack(
                            alignment: AlignmentDirectional.center,
                            children: [
                              Container(
                                width: 46.h,
                                height: 46.h,
                                decoration: BoxDecoration(
                                    color: cwColor2,
                                    borderRadius: BorderRadius.circular(10.h),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            Color(0xFF4F9FF1).withOpacity(0.2),
                                        offset: Offset(0, 2),
                                        blurRadius: 20.0,
                                      )
                                    ]),
                                child: Center(
                                  child: Container(
                                      height: 27.h,
                                      width: 25.w,
                                      child: SvgPicture.asset(
                                          Tools().getIcon("notification.svg"))),
                                ),
                              ),
                              Container(
                                height: 53.h,
                                width: 53.h,
                                alignment: AlignmentDirectional.topEnd,
                                child: Container(
                                  width: 13.h,
                                  height: 13.h,
                                  decoration: BoxDecoration(
                                      color: cwColor6, shape: BoxShape.circle),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 68.h,
                            width: 68.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.h),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xFF4F9FF1).withOpacity(0.2),
                                    offset: Offset(0, 2),
                                    blurRadius: 20.0,
                                  )
                                ]),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.h),
                              child: Container(
                                  width: 46.h,
                                  height: 46.h,
                                  child:
                                      Image.asset(Tools().getIcon("info.png"))),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 19.h,
                      ),
                      Text(
                        "Are you feeling sick?",
                        style: kTextConfig.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: ScreenUtil().setSp(30),
                          color: cwColor2,
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        "If you felling sick with any COVID-19 symptoms, please call or sms for us imediately for help.",
                        style: kTextConfig.copyWith(
                          fontWeight: FontWeight.w300,
                          fontSize: ScreenUtil().setSp(20),
                          color: cwColor2,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            child: Container(
                              height: 56.h,
                              width: 160.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.red,
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                'Call now',
                                style: kTextConfig.copyWith(
                                  fontWeight: FontWeight.normal,
                                  fontSize: ScreenUtil().setSp(20),
                                  color: cwColor2,
                                ),
                              ),
                            ),
                            onTap: () {},
                          ),
                          SizedBox(
                            width: 23.w,
                          ),
                          GestureDetector(
                            child: Container(
                              height: 56.h,
                              width: 160.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.green,
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                'Send SMS',
                                style: kTextConfig.copyWith(
                                  fontWeight: FontWeight.normal,
                                  fontSize: ScreenUtil().setSp(20),
                                  color: cwColor2,
                                ),
                              ),
                            ),
                            onTap: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

List<Color> colorBoxs = [
  CustomColors.yellow,
  CustomColors.green,
  CustomColors.red,
  Colors.blue,
];
List<String> names = ['Infected', 'Recovered', 'Death', 'Treated'];
