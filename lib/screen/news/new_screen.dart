import 'package:cowin_1/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewTab extends StatefulWidget {
  @override
  _NewTabState createState() => _NewTabState();
}

class _NewTabState extends State<NewTab> {
  int currentPage = 0;
  late PageController controller;
  @override
  void initState() {
    controller = PageController(initialPage: currentPage);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Container(),
        leadingWidth: 10,
        brightness: Brightness.dark,
        backgroundColor: kWhiteColor,
        title: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 20,
          ),
          child: Text(
            'News',
            style: heading.copyWith(
              color: Colors.black,
              fontSize: 22,
            ),
          ),
        ),
      ),
    );
  }
}
