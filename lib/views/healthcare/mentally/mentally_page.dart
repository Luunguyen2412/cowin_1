import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';
import 'package:cowin_1/common/constants/tools.dart';
import 'package:cowin_1/views/healthcare/mentally/widgets/meditation.dart';
import 'package:cowin_1/views/healthcare/mentally/widgets/pychology.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spannable_grid/spannable_grid.dart';

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
              height: 160.h,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 40.h, left: 35.w, right: 35.w),
              decoration: BoxDecoration(
                  color: cwColor8, borderRadius: BorderRadius.circular(20.h)),
              child: Stack(
                children: [
                  Positioned(
                    left: 163.w,
                    child: Container(
                      height: 168.h,
                      width: 180.w,
                      child: Image.asset(
                        "assets/images/image1.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20.h, left: 20.w),
                          child: Text(
                            "COVID-19\n& Mental Health",
                            style: kText21Bold_2,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 12.h, left: 20.w),
                          child: Container(
                              width: 149.w,
                              child: Text(
                                "The importance of mental health during the COVID19 pandemic.",
                                style: kText14Normal_2,
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
