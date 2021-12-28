import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInController with ChangeNotifier {
  var _googleSignIn = GoogleSignIn();
  GoogleSignInAccount? googleAccount;

  login({required Function success, required Function error}) async {
    try {
      googleAccount = await _googleSignIn.signIn();
      notifyListeners();
      success();
    } catch (e) {
       error();
    }
  }

  logOut() async {
    this.googleAccount = await _googleSignIn.signOut();
    notifyListeners();
  }
}
