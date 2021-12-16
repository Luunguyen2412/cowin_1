import 'dart:ui';

import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';
import 'package:cowin_1/common/constants/tools.dart';
import 'package:cowin_1/views/home/home_screen.dart';
import 'package:cowin_1/views/home/widget/card.dart';
import 'package:cowin_1/views/profile/widget/ProfileMenuItem.dart';
import 'package:cowin_1/views/profile/widget/RecentlyCard.dart';
import 'package:cowin_1/widget/news_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PersonalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipPath(
                clipper: MyClipper(),
                child: Container(
                  height: 300.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: cwcolor21,
                    image: DecorationImage(
                      alignment: Alignment.topCenter,
                      image: AssetImage(
                        'assets/images/profilebg.png',
                      ),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 100.h,
                      ),
                      CircleAvatar(
                        radius: 50.h,
                        backgroundImage: AssetImage(
                          "assets/images/avtProfile.png",
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        'Anna Helley',
                        style: kTextConfig.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: ScreenUtil().setSp(25),
                          color: cwColor2,
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Text(
                        '0946375458',
                        style: kTextConfig.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: ScreenUtil().setSp(15),
                          color: cwColor2,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [],
                      ),
                    ),
                    SizedBox(
                      height: 17.h,
                    ),
                    Text(
                      'Setting',
                      style: kTextConfig.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: ScreenUtil().setSp(25),
                        color: cwColor3,
                      ),
                    ),
                    SizedBox(
                      height: 14.h,
                    ),
                    ProfileMenuItem(
                      iconSrc: "assets/icons/password.svg",
                      title: 'Change Password',
                      press: () {},
                      check: true,
                      color: cwcolor22,
                    ),
                    ProfileMenuItem(
                      iconSrc: 'assets/icons/language.svg',
                      title: 'Language',
                      press: () {},
                      check: true,
                      color: cwcolor23,
                    ),
                    ProfileMenuItem(
                      iconSrc: 'assets/icons/security.svg',
                      title: 'Security',
                      press: () {},
                      check: true,
                      color: cwcolor24,
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Text(
                      'Terms and Conditions',
                      style: kTextConfig.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: ScreenUtil().setSp(25),
                        color: cwColor3,
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    ProfileMenuItem(
                      iconSrc: 'assets/icons/termOfUse.svg',
                      title: 'Terms of use',
                      press: () {},
                      check: true,
                      color: cwcolor24,
                    ),
                    ProfileMenuItem(
                      iconSrc: 'assets/icons/policy.svg',
                      title: 'Policy on handling complaints ',
                      press: () {},
                      check: true,
                      color: cwcolor22,
                    ),
                    ProfileMenuItem(
                      iconSrc: 'assets/icons/private.svg',
                      title: 'Private permissions',
                      press: () {},
                      check: true,
                      color: cwcolor23,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    ProfileMenuItem(
                      iconSrc: 'assets/icons/QA.svg',
                      title: 'Q&A',
                      press: () {},
                      check: false,
                      color: cwColor17,
                    ),
                    ProfileMenuItem(
                      iconSrc: 'assets/icons/share.svg',
                      title: 'Share app',
                      press: () {},
                      check: false,
                      color: cwcolor25,
                    ),
                    ProfileMenuItem(
                      iconSrc: 'assets/icons/signout.svg',
                      title: 'Sign out',
                      press: () {},
                      check: false,
                      color: cwcolor23,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 60);
    path.quadraticBezierTo(
      size.width / 4,
      size.height,
      size.width / 2,
      size.height,
    );
    path.quadraticBezierTo(
      size.width - (size.width / 4),
      size.height,
      size.width,
      size.height - 60,
    );
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
