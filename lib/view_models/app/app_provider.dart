import 'package:flutter/cupertino.dart';

class AppProvider with ChangeNotifier{
  bool _hideNavBar = false;

  bool get hideNavBar => _hideNavBar;

  set hideNavBar(bool value) {
    _hideNavBar = value;
    notifyListeners();
  }
}