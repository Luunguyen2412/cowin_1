import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ProfileMenuItem extends StatelessWidget {
  const ProfileMenuItem({
    Key? key,
    required this.iconSrc,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String iconSrc, title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.h),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image.asset(iconSrc),
              SizedBox(width: 11.w),
              Text(
                title,
                style: kTextConfig.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: ScreenUtil().setSp(16),
                  color: cwColor3,
                ),
              ),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios,
                color: cwColor5,
              )
            ],
          ),
        ),
      ),
    );
  }
}
