import 'dart:ffi';

import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';
import 'package:cowin_1/themes.dart';
import 'package:cowin_1/views/login/widgets/textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../size_config.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(
                  height: 111.h,
                ),
                Text(
                  'Register',
                  textAlign: TextAlign.center,
                  style: kTextConfig.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: ScreenUtil().setSp(40),
                    color: cwColor1,
                  ),
                ),
                Text(
                  'Create your new account',
                  textAlign: TextAlign.center,
                  style: kTextConfig.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: ScreenUtil().setSp(20),
                    color: cwColor4,
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                TextFieldContainer(
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.person,
                        color: cwColor5,
                      ),
                      hintText: "Email/your number",
                      hintStyle: kTextConfig.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: ScreenUtil().setSp(17),
                        color: cwColor5,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 14.h,
                ),
                TextFieldContainer(
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.lock,
                        color: cwColor5,
                      ),
                      hintText: "Password",
                      hintStyle: kTextConfig.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: ScreenUtil().setSp(17),
                        color: cwColor5,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 14.h,
                ),
                TextFieldContainer(
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.lock,
                        color: cwColor5,
                      ),
                      hintText: "Confirm Password",
                      hintStyle: kTextConfig.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: ScreenUtil().setSp(17),
                        color: cwColor5,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Text(
                  "By signing you agree to our Team of use and\nprivacy notice",
                  textAlign: TextAlign.center,
                  style: kTextConfig.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: ScreenUtil().setSp(14),
                    color: cwColor4,
                  ),
                ),
                SizedBox(
                  height: 72.h,
                ),
                GestureDetector(
                  child: Container(
                    height: 60,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(38),
                      color: cwColor5,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'REGISTER',
                      style: kTextConfig.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: ScreenUtil().setSp(20),
                        color: cwColor2,
                      ),
                    ),
                  ),
                  onTap: () {},
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have account?",
                      textAlign: TextAlign.center,
                      style: kTextConfig.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: ScreenUtil().setSp(18),
                        color: cwColor4,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Login',
                        style: kTextConfig.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: ScreenUtil().setSp(18),
                          color: cwColor6,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
