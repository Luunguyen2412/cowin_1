import 'package:cowin_1/themes.dart';
import 'package:cowin_1/views/login/login_screen.dart';
import 'package:cowin_1/views/main_screen.dart';
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
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 94.h),
                child: Column(
                  children: [
                    Text(
                      "Update news about\nCovid-19 in the country...",
                      textAlign: TextAlign.left,
                      style: heading.copyWith(
                        color: kWhiteColor,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      height: 69.h,
                    ),
                    Image.asset(
                      'assets/images/splash1.png',
                      height: 334.h,
                      width: 364.h,
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
                          style: heading.copyWith(
                              color: kWhiteColor, fontSize: 16),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SplashScreen2()));
                      },
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

class SplashScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBlueColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 94.h),
                child: Column(
                  children: [
                    Text(
                      "Take care of health...",
                      textAlign: TextAlign.left,
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
                          style: heading.copyWith(
                              color: kWhiteColor, fontSize: 16),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SplashScreen3()));
                      },
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SplashScreen4()));
                      },
                      child: Text(
                        'Skip',
                        style: normalText.copyWith(
                            color: kWhiteColor, fontSize: 14),
                      ),
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

class SplashScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBlueColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 94.h),
                child: Column(
                  children: [
                    Text(
                      "Free consultation\nservice for doctors ...",
                      textAlign: TextAlign.left,
                      style: heading.copyWith(color: kWhiteColor, fontSize: 24),
                    ),
                    SizedBox(
                      height: 49.h,
                    ),
                    Image.asset(
                      'assets/images/splash3.png',
                      height: 334.h,
                      width: 364.h,
                    ),
                    SizedBox(
                      height: 91.h,
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
                          style: heading.copyWith(
                              color: kWhiteColor, fontSize: 16),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SplashScreen4()));
                      },
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SplashScreen4()));
                      },
                      child: Text(
                        'Skip',
                        style: normalText.copyWith(
                            color: kWhiteColor, fontSize: 14),
                      ),
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

class SplashScreen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBlueColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 90.h),
                child: Column(
                  children: [
                    Text(
                      "Welcome to COWIN",
                      textAlign: TextAlign.center,
                      style: heading.copyWith(color: kWhiteColor, fontSize: 30),
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    Text(
                      "Stay safe and get up to dates announcement city authorities.",
                      textAlign: TextAlign.center,
                      style:
                          normalText.copyWith(color: kWhiteColor, fontSize: 16),
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
                    Image.asset(
                      'assets/images/splash4.png',
                      height: 334.h,
                      width: 364.h,
                    ),
                    SizedBox(
                      height: 65.h,
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
                            style: heading.copyWith(
                                color: kWhiteColor, fontSize: 16),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        }),
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
