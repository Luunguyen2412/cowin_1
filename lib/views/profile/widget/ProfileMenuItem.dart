import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ProfileMenuItem extends StatelessWidget {
  const ProfileMenuItem({
    Key? key,
    required this.iconSrc,
    required this.title,
    required this.press,
    required this.color,
    required this.check,
  }) : super(key: key);
  final String iconSrc, title;
  final Function press;
  final Color color;
  final bool check;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        press();
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 50.h,
                width: 50.h,
                padding: EdgeInsets.all(10.h),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset(iconSrc),
              ),
              SizedBox(width: 11.w),
              Text(
                title,
                style: kTextConfig.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: ScreenUtil().setSp(20.sp),
                  color: cwColor3,
                ),
              ),
              Spacer(),
              if (check) (Icon(Icons.arrow_forward_ios, color: cwColor5))
            ],
          ),
        ),
      ),
    );
  }
}
