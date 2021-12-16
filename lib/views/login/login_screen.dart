import 'dart:ffi';

import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';
import 'package:cowin_1/themes.dart';
import 'package:cowin_1/views/login/widgets/textfield.dart';
import 'package:cowin_1/views/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../size_config.dart';
import 'Register_Screen.dart';
import 'forgot_password_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 340.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/login.png"),
                      fit: BoxFit.fill),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Welcome back',
                textAlign: TextAlign.center,
                style: kTextConfig.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: ScreenUtil().setSp(40),
                  color: cwColor1,
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                'Login to your account',
                textAlign: TextAlign.center,
                style: kTextConfig.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: ScreenUtil().setSp(20),
                  color: cwColor4,
                ),
              ),
              SizedBox(
                height: 35.h,
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
                height: 17.h,
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
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(top: 7.h),
                      child: IconButton(
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
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(4),
                  ),
                  Checkbox(
                    value: false,
                    onChanged: (value) {},
                  ),
                  Text(
                    'Remember me',
                  ),
                  SizedBox(
                    width: 130.w,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgotPassScreen()));
                    },
                    child: Text(
                      'Forgot password?',
                      style: kText14Medium_1.copyWith(
                          fontSize: ScreenUtil().setSp(16.sp)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 35.h,
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
                    'LOGIN',
                    style: kTextConfig.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: ScreenUtil().setSp(20),
                      color: cwColor2,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MainScreen()));
                },
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
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
                              builder: (context) => RegisterScreen()));
                    },
                    child: Text(
                      'Sign up!',
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
      ),
    );
  }
}
