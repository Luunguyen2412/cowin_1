import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';

import 'package:cowin_1/views/healthcare/mentally/widgets/meditation.dart';
import 'package:cowin_1/views/healthcare/mentally/widgets/pychology.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MentallyPage extends StatefulWidget {
  const MentallyPage({Key? key}) : super(key: key);

  @override
  _MentallyPageState createState() => _MentallyPageState();
}

class _MentallyPageState extends State<MentallyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFBFB),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 180.h,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 30.h, left: 20.w, right: 20.w),
              decoration: BoxDecoration(
                  color: cwColor8, borderRadius: BorderRadius.circular(20.h)),
              child: Stack(
                children: [
                  Positioned(
                    right: 15.w,
                    child: Container(
                      height: 180.h,
                      width: 180.w,
                      child: Image.asset(
                        "assets/images/pyc_image.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 30.h, left: 20.w),
                          child: Text(
                            "COVID-19\n& Mental Health",
                            style: kText21Bold_2,
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.h, left: 20.w),
                          child: Container(
                              width: 150.w,
                              child: Text(
                                "The importance of mental health during the COVID19 pandemic.",
                                style: kText16Normal_2,
                              )),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Pychology(),
            SizedBox(
              height: 20.h,
            ),
            Meditation(),
            SizedBox(
              height: 30.h,
            ),
          ],
        ),
      ),
    );
  }
}
