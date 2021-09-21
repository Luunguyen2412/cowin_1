import 'package:cowin_1/themes.dart';
import 'package:cowin_1/view_models/navigation.dart';
import 'package:cowin_1/views/home/home_screen.dart';
import 'package:cowin_1/views/login/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../size_config.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBlueColor,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(
                  height: 118.h,
                ),
                Text(
                  "Update news about Covid-19 in the country...",
                  textAlign: TextAlign.center,
                  style: heading.copyWith(color: kWhiteColor, fontSize: 24),
                ),
                SizedBox(
                  height: 69.h,
                ),
                Image.asset(
                  'assets/images/splash1.png',
                  height: 334.h,
                  width: 364.h,
                ),
              ],
            ),
            SizedBox(
              height: 100.h,
            ),
            GestureDetector(
              child: Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.orange,
                ),
                alignment: Alignment.center,
                child: Text(
                  'CONTINUE',
                  style: heading.copyWith(color: kWhiteColor, fontSize: 16),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SplashScreen2()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SplashScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBlueColor,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(
                  height: 118.h,
                ),
                Text(
                  "Take care of health...",
                  textAlign: TextAlign.center,
                  style: heading.copyWith(color: kWhiteColor, fontSize: 24),
                ),
                SizedBox(
                  height: 69.h,
                ),
                Image.asset(
                  'assets/images/splash2.png',
                  height: 334.h,
                  width: 364.h,
                ),
              ],
            ),
            SizedBox(
              height: 100.h,
            ),
            GestureDetector(
              child: Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.orange,
                ),
                alignment: Alignment.center,
                child: Text(
                  'CONTINUE',
                  style: heading.copyWith(color: kWhiteColor, fontSize: 16),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SplashScreen3()));
              },
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SplashScreen()));
              },
              child: Text(
                'Skip',
                style: normalText.copyWith(color: kWhiteColor, fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SplashScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBlueColor,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(
                  height: 118.h,
                ),
                Text(
                  "Free consultation service for doctors ...",
                  textAlign: TextAlign.center,
                  style: heading.copyWith(color: kWhiteColor, fontSize: 24),
                ),
                SizedBox(
                  height: 69.h,
                ),
                Image.asset(
                  'assets/images/splash3.png',
                  height: 334.h,
                  width: 364.h,
                ),
              ],
            ),
            SizedBox(
              height: 100.h,
            ),
            GestureDetector(
              child: Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.orange,
                ),
                alignment: Alignment.center,
                child: Text(
                  'CONTINUE',
                  style: heading.copyWith(color: kWhiteColor, fontSize: 16),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SplashScreen4()));
              },
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SplashScreen2()));
              },
              child: Text(
                'Skip',
                style: normalText.copyWith(color: kWhiteColor, fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SplashScreen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBlueColor,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(
                  height: 94.h,
                ),
                Text(
                  "Welcome to COWIN",
                  textAlign: TextAlign.center,
                  style: heading.copyWith(color: kWhiteColor, fontSize: 24),
                ),
                SizedBox(
                  height: 6.h,
                ),
                Text(
                  "Stay safe and get up to dates announcement city authorities.",
                  textAlign: TextAlign.center,
                  style: normalText.copyWith(color: kWhiteColor, fontSize: 16),
                ),
                SizedBox(
                  height: 69.h,
                ),
                Image.asset(
                  'assets/images/splash4.png',
                  height: 334.h,
                  width: 364.h,
                ),
              ],
            ),
            SizedBox(
              height: 80.h,
            ),
            GestureDetector(
              child: Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.orange,
                ),
                alignment: Alignment.center,
                child: Text(
                  'GET START',
                  style: heading.copyWith(color: kWhiteColor, fontSize: 16),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NavigationScreen()));
              },
            ),
            SizedBox(
              height: 10.h,
            ),
            GestureDetector(
              child: Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: kBlueColor,
                  border: Border.all(
                    color: kWhiteColor,
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: kWhiteColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
