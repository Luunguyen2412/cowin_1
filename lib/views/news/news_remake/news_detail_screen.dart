import 'package:cowin_1/models/news_model.dart';
import 'package:flutter/material.dart';

class NewsDetailPage extends StatefulWidget {
  static const String routeName = "/newsDetailPage";
  final NewsModel newsModel;
  const NewsDetailPage({Key? key, required this.newsModel}) : super(key: key);

  @override
  _NewsDetailPageState createState() => _NewsDetailPageState();
}

class _NewsDetailPageState extends State<NewsDetailPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // url: widget.newsModel.link,
      // appBar: AppBar(
      //   backgroundColor: primaryColor,
      //   title: Text(widget.newsModel.title),
      // ),
      // // withZoom: true,
      // withLocalStorage: true,
      // initialChild: Container(
      //     color: Colors.white,
      //     child: Center(
      //         child: SizedBox(
      //             height: 25,
      //             width: 25,
      //             child: SpinKitFadingFour(color: primaryColor, size: 24.0)))),
    );
  }
}
