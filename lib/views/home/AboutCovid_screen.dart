import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';
import 'package:cowin_1/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutCovidScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 289.h,
                    child: Image.asset('assets/images/Vector 44.png'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 15.h),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Symptoms',
                        style: kTextConfig.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: ScreenUtil().setSp(45),
                          color: cwColor3,
                        ),
                      ),
                      SizedBox(
                        height: 36.h,
                      ),
                      Text(
                        'COVID-19 affects different people in\ndifferent ways. Most infected people will\ndevelop mild to moderate illness and\nrecover without hospitalization.',
                        style: kTextConfig.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: ScreenUtil().setSp(20),
                          color: cwColor3,
                        ),
                      ),
                      textWidget(
                        'Most common symptoms:',
                        'fever\ncough\ntiredness\nloss of taste or smell',
                      ),
                      textWidget(
                        'Less common symptoms:',
                        'sore throat\nheadache\naches and pains\na rash on skin, or discolouration of fingers',
                      ),
                      textWidget(
                        'Serious symptoms:',
                        'difficulty breathing or shortness of breath loss of speech or mobility, or confusionchest pain.\nSeek immediate medical attention if you have serious symptoms.  Always call before visiting your doctor or health facility.\nPeople with mild symptoms who are otherwise healthy should manage their symptoms at home.\nOn average it takes 5–6 days from when someone is infected with the virus for symptoms to show, however it can take up to 14 days.  ',
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class textWidget extends StatelessWidget {
  final String title;
  final String text;
  textWidget(
    this.title,
    this.text,
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15.h,
        ),
        Text(
          title,
          style: kTextConfig.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: ScreenUtil().setSp(20),
            color: cwColor3,
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          text,
          style: kTextConfig.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: ScreenUtil().setSp(20),
            color: cwColor3,
          ),
        ),
      ],
    );
  }
}
