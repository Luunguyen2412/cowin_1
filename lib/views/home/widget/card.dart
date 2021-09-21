import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardInfomation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
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
          Card1(),
        ],
      ),
    );
  }
}

class Card1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 142.h,
      width: 282.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage('assets/images/Frame1.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
