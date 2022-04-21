import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';
import 'package:cowin_1/themes.dart';
import 'package:cowin_1/views/home/bloc/home_bloc.dart';
import 'package:cowin_1/widget/covid_cases_tile.dart';
import 'package:cowin_1/widget/news_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cowin_1/views/home/bloc/home_state.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

import 'bloc/home_bloc.dart';
import 'bloc/home_event.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController tabController;
  late TabController tabController1;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: primaryColor,
      ),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 260.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15)),
                        color: primaryColor,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 25.h, vertical: 10.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Cowin",
                                style: kTextConfig.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: ScreenUtil().setSp(30),
                                  color: cwColor2,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Text(
                            "Are you feeling sick?",
                            style: kTextConfig.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: ScreenUtil().setSp(25),
                              color: cwColor2,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            "If you felling sick with any COVID-19 symptoms, please call or sms for us imediately for help.",
                            style: kTextConfig.copyWith(
                              fontWeight: FontWeight.w300,
                              fontSize: ScreenUtil().setSp(16),
                              color: cwColor2,
                            ),
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                GestureDetector(
                                    child: Container(
                                      height: 56.h,
                                      width: 160.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: CustomColors.green,
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            spreadRadius: 5,
                                            blurRadius: 7,
                                            offset: Offset(0,
                                                3), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.phone,
                                            color: kWhiteColor,
                                          ),
                                          Text(
                                            'Call now',
                                            style: kTextConfig.copyWith(
                                              fontWeight: FontWeight.normal,
                                              fontSize:
                                                  ScreenUtil().setSp(20.sp),
                                              color: cwColor2,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    onTap: () async {
                                      const _url = "tel:19003228";
                                      if (await canLaunch(_url)) {
                                        await launch(_url);
                                      } else {
                                        throw 'Could not launch $_url';
                                      }
                                    }),
                                GestureDetector(
                                  child: Container(
                                    height: 56.h,
                                    width: 160.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: cwcolor26,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.5),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: Offset(0,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    alignment: Alignment.center,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.w, vertical: 20.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Covid Cases of Vietnam",
                            style: kText35Bold_7,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          //CustomSwitchTabbar(),
                          //sô ca covid
                          TotalPage(),
                          SizedBox(
                            height: 5.h,
                          ),
                          //CardInfomation(),
                          SizedBox(
                            height: 32.h,
                          ),
                          Text(
                            "Hot news",
                            style: kText35Bold_7,
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
                            'Hanoi added 51 new COVID-19 cases, only HH 4C Linh Dam apartment building has 13 cases',
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
                            'Hanoi added 51 new COVID-19 cases, only HH 4C Linh Dam apartment building has 13 cases',
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
                            'Hanoi added 51 new COVID-19 cases, only HH 4C Linh Dam apartment building has 13 cases',
                            '5 mins',
                            'Lifes upadate',
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
    return BlocProvider(
      create: (context) => HomeBloc()..add(const LoadEvent()),
      child: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
        final bloc = BlocProvider.of<HomeBloc>(context);
        int _treatedValue = 0;
        if (bloc.summPatient != null) {
          _treatedValue = (bloc.summPatient?.data.confirmed ?? 0) -
              (bloc.summPatient?.data.recovered ?? 0) -
              (bloc.summPatient?.data.death ?? 0);
        }
        String _lastTimeUpdate = bloc.summPatient != null
            ? DateFormat("dd/MM/yyyy")
                .format(bloc.summPatient!.data.createdDate)
            : "";
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                "* Update lasted $_lastTimeUpdate",
                style: normalText.copyWith(color: kTextColor, fontSize: 14),
              ),
            ),
            SizedBox(height: 10.h),
            state is LoadingState
                ? _loadingWidget()
                : Container(
                    child: GridView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 15.h,
                        mainAxisSpacing: 15.w,
                        childAspectRatio: 25 / 17,
                      ),
                      children: [
                        CasesItem(
                            'Infections',
                            bloc.summPatient?.data.confirmed ?? 0,
                            CustomColors.blue,
                            bloc.summPatient?.data.plusConfirmed ?? 0),
                        CasesItem('Treatments', _treatedValue, cwcolor26, 0),
                        CasesItem(
                            'Recovereds ',
                            bloc.summPatient?.data.recovered ?? 0,
                            CustomColors.green,
                            bloc.summPatient?.data.plusRecovered ?? 0),
                        CasesItem(
                            'Deaths',
                            bloc.summPatient?.data.death ?? 0,
                            CustomColors.red,
                            bloc.summPatient?.data.plusDeath ?? 0),
                      ],
                    ),
                  ),
          ],
        );
      }),
    );
  }

  Widget _loadingWidget() {
    return Center(
        child: SizedBox(
            height: 25,
            width: 25,
            child: SpinKitFadingFour(color: primaryColor, size: 24.0)));
  }
}
