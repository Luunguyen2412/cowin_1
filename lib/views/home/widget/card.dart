import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';
import 'package:cowin_1/views/healthcare/physically/physically_detail.dart';
import 'package:cowin_1/views/home/AboutCovid_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardInfomation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 38.h),
      height: 421.h,
      width: 400.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(
            'assets/images/About_covid19.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Understant about\nCOVID-19 to protect\nyourself better',
            style: kTextConfig.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: ScreenUtil().setSp(18),
              color: cwColor2,
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            "About\nCovid-19",
            style: kTextConfig.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: ScreenUtil().setSp(35),
              color: cwColor3,
            ),
          ),
          SizedBox(
            height: 28.h,
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Card1('assets/images/Frame1.png'),
                SizedBox(
                  width: 25.w,
                ),
                Card1('assets/images/card2.png'),
                SizedBox(
                  width: 25.w,
                ),
                Card1('assets/images/card3.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Card1 extends StatelessWidget {
  final String image;
  Card1(
    this.image,
  );
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => AboutCovidScreen1()));
      },
      child: Container(
        height: 142.h,
        width: 282.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(
              image,
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
