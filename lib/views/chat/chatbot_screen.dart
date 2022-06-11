import 'dart:convert';

import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

Future<Message> fetchMessage() async {
  final response = await http.get(
    Uri.parse('https://uitcovidchatbot.herokuapp.com/'),
  );

  if (response.statusCode == 200) {
    return Message.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}

class Message {
  final String title;

  const Message({
    required this.title,
  });

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      title: json['response']['data'],
    );
  }
}

class ChatBotScreen extends StatefulWidget {
  const ChatBotScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ChatBotScreen> createState() => _ChatBotScreenState();
}

class _ChatBotScreenState extends State<ChatBotScreen> {
  late Future<Message> futureMessage;
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();
  List<String> _data = [];
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    futureMessage = fetchMessage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        toolbarHeight: 80.h,
        elevation: 1,
        leading: Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                    width: 40.h,
                    height: 40.h,
                    child: Icon(
                      Icons.arrow_back,
                      color: cwColor2,
                      size: 25.w,
                    )),
              ),
            ],
          ),
        ),
        title: Row(
          children: [
            Container(
              height: 40.h,
              width: 40.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.h),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.h),
                child: Image.asset(
                  "assets/images/doctor.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.w),
              child: Text(
                "Dr.Cowin",
                style:
                    kText18Bold_2.copyWith(fontSize: ScreenUtil().setSp(22.sp)),
              ),
            ),
            GestureDetector(
                child: Container(
                  padding: EdgeInsets.only(right: 10.w, left: 140),
                  child: Icon(
                    Icons.phone,
                    color: cwColor2,
                    size: 30,
                  ),
                ),
                onTap: () async {
                  const _url = "tel:19003228";
                  if (await canLaunch(_url)) {
                    await launch(_url);
                  } else {
                    throw 'Could not launch $_url';
                  }
                })
          ],
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 60),
            child: AnimatedList(
                key: _listKey,
                initialItemCount: _data.length,
                itemBuilder: (BuildContext context, int index,
                    Animation<double> animation) {
                  return _buildItem(_data[index], animation, index);
                }),
            // child: FutureBuilder<Message>(
            //     future: futureMessage,
            //     builder: (context, snapshot) {
            //       if (snapshot.hasData) {
            //         //return Text(snapshot.data!.title);
            //         return AnimatedList(
            //             key: _listKey,
            //             initialItemCount: _data.length,
            //             itemBuilder: (BuildContext context, int index,
            //                 Animation<double> animation) {
            //               return _buildItem(snapshot.data!.title, animation, index);
            //             });
            //       } else if (snapshot.hasError) {
            //         return Text('${snapshot.error}');
            //       }
            //       return const CircularProgressIndicator();
            //     }),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.message,
                      color: primaryColor,
                    ),
                    hintText: "Say something with me?",
                    hintStyle: TextStyle(color: Colors.grey[400]),
                    fillColor: Colors.white12,
                  ),
                  controller: _controller,
                  textInputAction: TextInputAction.send,
                  onSubmitted: (value) {
                    this._getResponse();
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  http.Client _getClient() {
    return http.Client();
  }

  void _getResponse() async {
    if (_controller.text.length > 0) {
      this._insertSingleItem(_controller.text);
      var client = _getClient();
      try {
        client.post(
          Uri.parse("https://uitcovidchatbot.herokuapp.com/"),
          body: {"sentence": _controller.text},
        )..then((response) {
            print("tôi là bot đây: " + response.body);
            // var data = jsonEncode(response.body);
            // _insertSingleItem(
            //     jsonDecode(data) + "<bot>");

            Map<String, dynamic> data = jsonDecode(response.body);
            if (data['status'] == 'OK') {
              switch (data['response']['tag']) {
                // chao hoi
                case 'greeting':
                  _insertSingleItem((data['response']['data'] + "<bot>"));
                  break;
                // tra cuu cong dung thuoc
                case 'indications_and_usage':
                  _insertSingleItem((data['response']['data'] + "<bot>"));
                  break;
                // tra cuu luu luong thuoc
                case 'dosage_and_administration':
                  _insertSingleItem((data['response']['data'] + "<bot>"));
                  break;
                // thong tin covid
                case 'covid_info':
                  _insertSingleItem((data['response']['data']
                          ['lastUpdatedDate'] +
                      '\n' +
                      'Tong so ca mac: ' +
                      (data['response']['data']['totalCases']).toString() +
                      '\n' +
                      'So ca mac moi: ' +
                      (data['response']['data']['newCases']).toString() +
                      '\n' +
                      'Tong so ca tu vong: ' +
                      (data['response']['data']['totalDeaths']).toString() +
                      '\n' +
                      'So ca moi tu vong: ' +
                      (data['response']['data']['newDeaths']).toString() +
                      "<bot>"));
                  break;
                // tin tuc y te
                case 'health_news':
                  _insertSingleItem(
                      (data['response']['data']['news']['title'] + "<bot>"));
                  break;
                // cong thuc nau an ngau nhien
                case 'random_recipe':
                  _insertSingleItem((data['response']['data']['title'] +
                      '\n' +
                      '\n' +
                      data['response']['data']['sourceUrl'] +
                      "<bot>"));
                  break;
                // kiem tra trieu chung
                case 'symptom_checker':
                  _insertSingleItem(
                      (data['response']['data']['name'] + "<bot>"));
                  break;
                default:
                  _insertSingleItem((data['message'] + "<bot>"));
                  break;
              }
            } else {
              _insertSingleItem((data['message'] + "<bot>"));
            }

            // if (data['status'] == 'OK') {
            //   _insertSingleItem((data['response']['data'] + "<bot>"));
            // }
            // //  else if (data['response']['tag'] == 'random_recipe' && data['status'] == 'OK') {
            // //   _insertSingleItem((data['response']['data']['title'] + "<bot>"));
            // // }
            // else {
            //   _insertSingleItem((data['message'] + "<bot>"));
            // }

            //// sửa lại format của data trả về
          });
      } catch (e) {
        print("Failed -> $e");
      } finally {
        client.close();
        _controller.clear();
      }
    }
  }

  void _insertSingleItem(String message) {
    _data.add(message);
    _listKey.currentState!.insertItem(_data.length - 1);
  }

  Widget _buildItem(String item, Animation<double> animation, int index) {
    DateTime date = DateTime.now();

    bool mine = item.endsWith("<bot>");
    return SizeTransition(
      sizeFactor: animation,
      child: Padding(
        padding: EdgeInsets.only(top: 10),
        child: Container(
            alignment: mine ? Alignment.topLeft : Alignment.topRight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                mine
                    ? Padding(
                        padding: EdgeInsets.only(bottom: 0),
                        child: RichText(
                          text: TextSpan(
                              text: "Doctor",
                              style: TextStyle(color: Colors.black)),
                        ),
                      )
                    : SizedBox(),
                // Bubble(
                //   child: Text(item.replaceAll("<bot>", "")),
                //   color: mine ? Colors.deepOrangeAccent : Colors.white,
                //   padding: BubbleEdges.all(10),
                // ),
                mine
                    ? Container(
                        margin: EdgeInsets.only(top: 5.h),
                        padding: EdgeInsets.all(10.w),
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15.w),
                              topRight: Radius.circular(15.w),
                              bottomRight: Radius.circular(15.w),
                            )),
                        child: Text(
                          item.replaceAll("<bot>", ""),
                          style: kText16Normal_3.copyWith(
                              fontSize: ScreenUtil().setSp(17.sp)),
                        ),
                      )
                    : Container(
                        //margin: EdgeInsets.only(top: 10.h),
                        padding: EdgeInsets.all(10.w),
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15.w),
                              topRight: Radius.circular(15.w),
                              bottomLeft: Radius.circular(15.w),
                            )),
                        child: Text(
                          item.replaceAll("<bot>", ""),
                          style: kText16Normal_3.copyWith(
                              fontSize: ScreenUtil().setSp(17.sp)),
                        ),
                      ),
                mine
                    ? Padding(
                        padding: EdgeInsets.only(top: 6),
                        child: RichText(
                          text: TextSpan(
                              text: "${date.hour}:${date.minute}",
                              style: kText12Normal_18),
                        ),
                      )
                    : Padding(
                        padding: EdgeInsets.only(top: 6),
                        child: RichText(
                          text: TextSpan(
                              text: "${date.hour}:${date.minute}",
                              style: TextStyle(color: Colors.grey[500]),
                              children: [
                                TextSpan(text: " ✓", style: kText12Normal_18)
                              ]),
                        ),
                      ),
              ],
            )),
      ),
    );
  }
}
