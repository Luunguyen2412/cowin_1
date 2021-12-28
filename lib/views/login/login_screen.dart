//import '#dart:ffi';

import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';

import 'package:cowin_1/view_models/login/google_login_controller.dart';
import 'package:cowin_1/views/login/widgets/textfield.dart';
import 'package:cowin_1/views/main_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'Register_Screen.dart';
import 'forgot_password_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isObscure = true;
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();

  String? validateInput() {
    if (userName.text.isEmpty)
      return "Enter your email or phonenumber.";
    else if (userName.text.length < 9)
      return "Email or phonenumber is not correct.";
    if (password.text.isEmpty)
      return "Enter your password.";
    else if (password.text.length < 6) return "Password is not correct.";

    return null;
  }

  @override
  Widget build(BuildContext context) {
    GoogleSignInController _googleSignIn =
        Provider.of<GoogleSignInController>(context);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
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
                  child: TextFormField(
                    textAlignVertical: TextAlignVertical.center,
                    controller: userName,
                    // validator: (value) {
                    //   if (value!.isEmpty)
                    //     return "Enter your email or phonenumber.";
                    //   else if (!value.contains("@") || value.length < 9)
                    //     return "Email or phonenumber is not correct.";
                    //   else
                    //     return null;
                    // },
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
                    controller: password,
                    textAlignVertical: TextAlignVertical.center,
                    obscureText: _isObscure,
                    // validator: (value) {
                    //   if (value!.isEmpty)
                    //     return "Enter your password.";
                    //   else if (value.length < 6)
                    //     return "Password is not correct.";
                    //   else
                    //     return null;
                    // },
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 8.w),
                          child: Checkbox(
                            value: false,
                            onChanged: (value) {},
                          ),
                        ),
                        Text(
                          'Remember me',
                          style: kText14Normal_3.copyWith(
                              fontSize: ScreenUtil().setSp(16.sp)),
                        ),
                      ],
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
                    if (validateInput() == null) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MainScreen()));
                    } else {
                      final snackBar = SnackBar(
                        content: Container(
                          padding: EdgeInsets.only(bottom: 10.h),
                          child: Text(
                            validateInput().toString(),
                            textAlign: TextAlign.center,
                            style: kText14Normal_2,
                          ),
                        ),
                        backgroundColor: Colors.red,
                        duration: Duration(seconds: 3),
                        behavior: SnackBarBehavior.floating,
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
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
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text("Hoặc",style: kText18Bold_3,),
                ),
                    SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 40.h,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 20.w),
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: () {
                      _googleSignIn.login(
                          success: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainScreen()));
                          },
                          error: () {
                            print("Login error");
                          });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 30.h,
                          width: 30.h,
                          child: Image.asset("assets/icons/google.png"),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.w),
                          child:
                              Text("Login with google", style: kText28Bold_3),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 35.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
