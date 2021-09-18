import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';
import 'package:cowin_1/themes.dart';
import 'package:cowin_1/widget/covid_cases_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 329.h,
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
                    Container(
                      height: 421.h,
                      width: 400.h,
                      color: cwColor7,
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.fromLTRB(19.h, 38.h, 170.h, 15.h),
                            child: Text(
                              'Understant about COVID-19 to protect yourself better',
                              style: kTextConfig.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: ScreenUtil().setSp(18),
                                color: cwColor2,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.fromLTRB(19.h, 15.h, 230.h, 35.h),
                            child: Text(
                              "About Covid19",
                              style: kTextConfig.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: ScreenUtil().setSp(35),
                                color: cwColor3,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
                  height: 304.h,
                  width: 500.h,
                  color: cwColor1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.fromLTRB(29.h, 27.h, 200.h, 25.h),
                            child: Text(
                              "Cowin",
                              style: kText40Bold_4,
                            ),
                          ),
                        ],
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
                        height: 5.h,
                      ),
                      Text(
                        "If you felling sick with any COVID-19 symptoms, please call or sms for us imediately for help.",
                        style: kTextConfig.copyWith(
                          fontWeight: FontWeight.normal,
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
