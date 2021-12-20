//import '#dart:ffi';

import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';
import 'package:cowin_1/themes.dart';
import 'package:cowin_1/views/login/OTP_screen.dart';
import 'package:cowin_1/views/login/widgets/textfield.dart';
import 'package:cowin_1/widget/return_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../size_config.dart';
import 'login_screen.dart';

class changePasswordScreen extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<changePasswordScreen> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 25.w),
                child: Column(
                  children: [
                    ReturnButton(),
                    SizedBox(
                      height: 32.h,
                    ),
                    Text(
                      'Change Password',
                      textAlign: TextAlign.center,
                      style: kTextConfig.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: ScreenUtil().setSp(40),
                        color: cwColor1,
                      ),
                    ),
                    Text(
                      'New password must be different from\nprevious used passwords',
                      textAlign: TextAlign.center,
                      style: kTextConfig.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: ScreenUtil().setSp(18),
                        color: cwColor4,
                      ),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.h, vertical: 5.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'New password',
                            style: kTextConfig.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: ScreenUtil().setSp(15),
                              color: cwColor1,
                            ),
                          ),
                          SizedBox(
                            height: 11.h,
                          ),
                          TextFormField(
                            obscureText: _isObscure,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: cwColor1,
                                ),
                                suffixIcon: IconButton(
                                  icon: Icon(_isObscure
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                  onPressed: () {
                                    setState(() {
                                      _isObscure = !_isObscure;
                                    });
                                  },
                                )),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.h, vertical: 5.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Confirm password',
                            style: kTextConfig.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: ScreenUtil().setSp(15),
                              color: cwColor1,
                            ),
                          ),
                          SizedBox(
                            height: 11.h,
                          ),
                          TextFormField(
                            obscureText: _isObscure,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: cwColor1,
                                ),
                                suffixIcon: IconButton(
                                  icon: Icon(_isObscure
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                  onPressed: () {
                                    setState(() {
                                      _isObscure = !_isObscure;
                                    });
                                  },
                                )),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 55.h,
                    ),
                    GestureDetector(
                      child: Container(
                        height: 60,
                        width: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(38),
                          color: cwColor1,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Change password',
                          style: kTextConfig.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: ScreenUtil().setSp(20),
                            color: cwColor2,
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
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
