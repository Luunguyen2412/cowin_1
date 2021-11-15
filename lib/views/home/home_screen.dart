import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';
import 'package:cowin_1/common/constants/tools.dart';
import 'package:cowin_1/themes.dart';
import 'package:cowin_1/views/home/widget/NumberageCaseCovid.dart';
import 'package:cowin_1/views/home/widget/card.dart';
import 'package:cowin_1/widget/covid_cases_tile.dart';
import 'package:cowin_1/widget/news_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController tabController;
  late TabController tabController1;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(
      length: 3,
      vsync: this,
    );
    tabController.addListener(() {
      setState(() {});
    });
    tabController1 = TabController(
      length: 2,
      vsync: this,
    );
    tabController1.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 15.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 340.h,
                        ),
                        Text(
                          "Covid Cases",
                          style: heading.copyWith(
                              color: Colors.black, fontSize: 28),
                        ),
                        Text(
                          "Update lasted 3 minute ago",
                          style: normalText.copyWith(
                              color: kTextColor, fontSize: 14),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        CustomSwitchTabbar(),
                        SizedBox(
                          height: 5.h,
                        ),
                        CardInfomation(),
                        SizedBox(
                          height: 32.h,
                        ),
                        Text(
                          "Hot news",
                          style: heading.copyWith(
                              color: Colors.black, fontSize: 28),
                        ),
                        Text(
                          "Update news about covid in the country",
                          style: normalText.copyWith(
                              color: kTextColor, fontSize: 14),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        NewsCard(
                          'assets/images/Rectangle 225.png',
                          'Hanoi added 51 new COVID-19\ncases, only HH 4C Linh Dam\napartment building has 13 cases',
                          '5 mins',
                          'Lifes upadate',
                        ),
                        NewsCard(
                          'assets/images/covid.jpg',
                          'The army presides over food for Ho Chi Minh City',
                          '5 mins',
                          'Lifes upadate',
                        ),
                        NewsCard(
                          'assets/images/Rectangle 225.png',
                          'Hanoi added 51 new COVID-19\ncases, only HH 4C Linh Dam\napartment building has 13 cases',
                          '5 mins',
                          'Lifes upadate',
                        ),
                        NewsCard(
                          'assets/images/Rectangle 225.png',
                          'The army presides over food for Ho Chi Minh City',
                          '5 mins',
                          'Lifes upadate',
                        ),
                        NewsCard(
                          'assets/images/Rectangle 225.png',
                          'Hanoi added 51 new COVID-19\ncases, only HH 4C Linh Dam\napartment building has 13 cases',
                          '5 mins',
                          'Lifes upadate',
                        ),
                      ],
                    ),
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
                                          color: Color(0xFF4F9FF1)
                                              .withOpacity(0.2),
                                          offset: Offset(0, 2),
                                          blurRadius: 20.0,
                                        )
                                      ]),
                                  child: Center(
                                    child: Container(
                                        height: 27.h,
                                        width: 25.w,
                                        child: SvgPicture.asset(Tools()
                                            .getIcon("notification.svg"))),
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
                                        color: cwColor6,
                                        shape: BoxShape.circle),
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
                                    child: Image.asset(
                                        Tools().getIcon("info.png"))),
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
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.phone,
                                      color: kWhiteColor,
                                    ),
                                    Text(
                                      'Call now',
                                      style: kTextConfig.copyWith(
                                        fontWeight: FontWeight.normal,
                                        fontSize: ScreenUtil().setSp(20),
                                        color: cwColor2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () {},
                            ),
                            SizedBox(
                              width: 40.w,
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
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.message_outlined,
                                      color: kWhiteColor,
                                    ),
                                    Text(
                                      'Send SMS',
                                      style: kTextConfig.copyWith(
                                        fontWeight: FontWeight.normal,
                                        fontSize: ScreenUtil().setSp(20),
                                        color: cwColor2,
                                      ),
                                    ),
                                  ],
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

class TotalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: GridView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 28 / 16),
          children: [
            CasesItem(
              'Infected',
              '312,563',
              CustomColors.yellow,
            ),
            CasesItem(
              'Death',
              '1,564',
              CustomColors.red,
            ),
            CasesItem(
              'Recovered',
              '534,756',
              CustomColors.green,
            ),
            CasesItem(
              'Treated',
              '56,675',
              CustomColors.blue,
            ),
          ],
        ),
      ),
    );
  }
}

class TodayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: GridView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 28 / 16),
          children: [
            CasesItem(
              'Infected',
              '2,563',
              CustomColors.yellow,
            ),
            CasesItem(
              'Death',
              '64',
              CustomColors.red,
            ),
            CasesItem(
              'Recovered',
              '4,756',
              CustomColors.green,
            ),
            CasesItem(
              'Treated',
              '675',
              CustomColors.blue,
            ),
          ],
        ),
      ),
    );
  }
}

class YesterdayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: GridView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 28 / 16),
          children: [
            CasesItem(
              'Infected',
              '6,563',
              CustomColors.yellow,
            ),
            CasesItem(
              'Death',
              '564',
              CustomColors.red,
            ),
            CasesItem(
              'Recovered',
              '5456',
              CustomColors.green,
            ),
            CasesItem(
              'Treated',
              '5,675',
              CustomColors.blue,
            ),
          ],
        ),
      ),
    );
  }
}

class TotalPageGlobal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: GridView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 28 / 16),
          children: [
            CasesItem(
              'Infected',
              '234,312,563',
              CustomColors.yellow,
            ),
            CasesItem(
              'Death',
              '5,841,564',
              CustomColors.red,
            ),
            CasesItem(
              'Recovered',
              '645,534,756',
              CustomColors.green,
            ),
            CasesItem(
              'Treated',
              '6,556,675',
              CustomColors.blue,
            ),
          ],
        ),
      ),
    );
  }
}

class TodayPageGlobal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: GridView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 28 / 16),
          children: [
            CasesItem(
              'Infected',
              '452,563',
              CustomColors.yellow,
            ),
            CasesItem(
              'Death',
              '6,644',
              CustomColors.red,
            ),
            CasesItem(
              'Recovered',
              '654,756',
              CustomColors.green,
            ),
            CasesItem(
              'Treated',
              '8,675',
              CustomColors.blue,
            ),
          ],
        ),
      ),
    );
  }
}

class YesterdayPageGlobal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: GridView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 28 / 16),
          children: [
            CasesItem(
              'Infected',
              '466,563',
              CustomColors.yellow,
            ),
            CasesItem(
              'Death',
              '1,564',
              CustomColors.red,
            ),
            CasesItem(
              'Recovered',
              '55,456',
              CustomColors.green,
            ),
            CasesItem(
              'Treated',
              '15,675',
              CustomColors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
