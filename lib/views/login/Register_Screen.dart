import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';
import 'package:cowin_1/views/login/OTP_screen.dart';
import 'package:cowin_1/views/login/widgets/textfield.dart';
import 'package:cowin_1/widget/return_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'login_screen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 25.w),
                child: Column(
                  children: <Widget>[
                    ReturnButton(),
                    SizedBox(
                      height: 35.h,
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
                        fontWeight: FontWeight.w400,
                        fontSize: ScreenUtil().setSp(20),
                        color: cwColor4,
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    TextFieldContainer(
                      child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 7.h),
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(top: 7.h),
                            child: Icon(
                              Icons.person,
                              color: cwColor5,
                            ),
                          ),
                          hintText: "Email/Phone number",
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
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        obscureText: _isObscure,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 7.h),
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(top: 7.h),
                            child: Icon(
                              Icons.lock,
                              color: cwColor5,
                            ),
                          ),
                          hintText: "Password",
                          hintStyle: kTextConfig.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: ScreenUtil().setSp(17),
                            color: cwColor5,
                          ),
                          suffixIcon: IconButton(
                            color: cwColor5,
                            icon: Icon(_isObscure
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            },
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
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 7.h),
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(top: 7.h),
                            child: Icon(
                              Icons.lock,
                              color: cwColor5,
                            ),
                          ),
                          hintText: "Confirm Password",
                          hintStyle: kTextConfig.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: ScreenUtil().setSp(17),
                            color: cwColor5,
                          ),
                          suffixIcon: IconButton(
                            color: cwColor5,
                            icon: Icon(_isObscure
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            },
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: "By signing you agree to our ",
                        style: kTextConfig.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: ScreenUtil().setSp(14),
                          color: cwColor4,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'terms of use ',
                            style: kText14Medium_1,
                          ),
                          TextSpan(
                            text: 'and\n',
                            style: kTextConfig.copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: ScreenUtil().setSp(14),
                              color: cwColor4,
                            ),
                          ),
                          TextSpan(
                            text: 'privacy notice',
                            style: kText14Medium_1,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 72.h,
                    ),
                    GestureDetector(
                      child: Container(
                        height: 60.h,
                        width: 310.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(38),
                          color: cwColor1,
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
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OtpScreen()));
                      },
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
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                          },
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
