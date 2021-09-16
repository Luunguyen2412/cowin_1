import 'package:cowin_1/screen/home/home_screen.dart';
import 'package:cowin_1/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBlueColor,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Text(
                      "Update news about Covid-19 in the country...",
                      textAlign: TextAlign.center,
                      style: heading.copyWith(color: kWhiteColor, fontSize: 24),
                    ),
                    Spacer(flex: 2),
                    Image.asset(
                      'asset/covi.jpg',
                      height: getProportionateScreenHeight(265),
                      width: getProportionateScreenWidth(235),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  child: Column(
                    children: <Widget>[
                      Spacer(),
                      Spacer(flex: 3),
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
                      Spacer(),
                    ],
                  ),
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
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Text(
                      "Take care of health...",
                      textAlign: TextAlign.center,
                      style: heading.copyWith(color: kWhiteColor, fontSize: 24),
                    ),
                    Spacer(flex: 2),
                    Image.asset(
                      'asset/covi.jpg',
                      height: getProportionateScreenHeight(265),
                      width: getProportionateScreenWidth(235),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  child: Column(
                    children: <Widget>[
                      Spacer(),
                      Spacer(flex: 3),
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
                                  builder: (context) => SplashScreen()));
                        },
                        child: Text(
                          'Skip',
                          style: normalText.copyWith(
                              color: kWhiteColor, fontSize: 14),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
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
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Text(
                      "Free consultation service for doctors ...",
                      textAlign: TextAlign.center,
                      style: heading.copyWith(color: kWhiteColor, fontSize: 24),
                    ),
                    Spacer(flex: 2),
                    Image.asset(
                      'asset/covi.jpg',
                      height: getProportionateScreenHeight(265),
                      width: getProportionateScreenWidth(235),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  child: Column(
                    children: <Widget>[
                      Spacer(),
                      Spacer(flex: 3),
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
                                  builder: (context) => SplashScreen2()));
                        },
                        child: Text(
                          'Skip',
                          style: normalText.copyWith(
                              color: kWhiteColor, fontSize: 14),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
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
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Text(
                      "Welcome to COWIN",
                      textAlign: TextAlign.center,
                      style: heading.copyWith(color: kWhiteColor, fontSize: 24),
                    ),
                    Text(
                      "Stay safe and get up to dates announcement city authorities.",
                      textAlign: TextAlign.center,
                      style:
                          normalText.copyWith(color: kWhiteColor, fontSize: 16),
                    ),
                    Spacer(flex: 2),
                    Image.asset(
                      'asset/covi.jpg',
                      height: getProportionateScreenHeight(265),
                      width: getProportionateScreenWidth(235),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  child: Column(
                    children: <Widget>[
                      Spacer(),
                      Spacer(flex: 3),
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
                                  builder: (context) => HomePage()));
                        },
                      ),
                      SizedBox(
                        height: 5,
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
