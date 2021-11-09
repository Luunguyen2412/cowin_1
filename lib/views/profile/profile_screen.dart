import 'dart:ffi';
import 'dart:ui';

import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';
import 'package:cowin_1/common/constants/tools.dart';
import 'package:cowin_1/views/home/home_screen.dart';
import 'package:cowin_1/views/home/widget/card.dart';
import 'package:cowin_1/views/profile/widget/ProfileMenuItem.dart';
import 'package:cowin_1/views/profile/widget/RecentlyCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PersonalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                height: 360.h,
                width: 448.w,
                decoration: BoxDecoration(
                  color: cwColor5,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 120.h,
                    ),
                    CircleAvatar(
                      radius: 60.h,
                      backgroundImage: AssetImage(
                        "assets/images/Rectangle 225.png",
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
              padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 5.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Recently',
                        style: kTextConfig.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: ScreenUtil().setSp(25),
                          color: cwColor3,
                        ),
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: GestureDetector(
                          child: TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Text(
                                  'See all ',
                                  style: kTextConfig.copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: ScreenUtil().setSp(18),
                                    color: cwColor4,
                                  ),
                                ),
                                Image.asset('assets/images/tick.png'),
                                // SvgPicture.asset(
                                //     Tools().getIcon("notification.svg")),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 18.h,
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
                        // RecentlyCard(
                        //   'assets/images/Frame1.png',
                        //   'Prevention of COVID-19  ',
                        // ),
                        // RecentlyCard(
                        //   'assets/images/Frame1.png',
                        //   'Prevention of COVID-19  ',
                        // ),
                        // RecentlyCard(
                        //   'assets/images/Frame1.png',
                        //   'Prevention of COVID-19  ',
                        // ),
                      ],
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
                    iconSrc: 'assets/icons/info.png',
                    title: 'Change Passwors',
                    press: () {},
                  ),
                  ProfileMenuItem(
                    iconSrc: 'assets/icons/info.png',
                    title: 'Language',
                    press: () {},
                  ),
                  ProfileMenuItem(
                    iconSrc: 'assets/icons/info.png',
                    title: 'Security',
                    press: () {},
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
                    height: 14.h,
                  ),
                  ProfileMenuItem(
                    iconSrc: 'assets/icons/info.png',
                    title: 'Terms of use',
                    press: () {},
                  ),
                  ProfileMenuItem(
                    iconSrc: 'assets/icons/info.png',
                    title: 'Policy on handling complaints ',
                    press: () {},
                  ),
                  ProfileMenuItem(
                    iconSrc: 'assets/icons/info.png',
                    title: 'Private permissions',
                    press: () {},
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

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
