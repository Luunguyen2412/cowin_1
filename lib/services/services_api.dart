import 'dart:convert';

import 'package:cowin_1/models/news_model.dart';
import 'package:cowin_1/models/provinces.dart';
import 'package:cowin_1/models/sum_patient_models.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:webfeed/domain/rss_feed.dart';

const serverConfig = {
  "type": "app",
  "url": "http://171.244.39.37:8000/",
};

class APIServices {
  static final APIServices _instance = APIServices._internal();

  APIServices._internal();

  late String url;

  var kGoogleMap = "AIzaSyDo2Nk9WSlqGydwmjj47QW64tlB1xiEagU";

  factory APIServices() => _instance;

  void setAppConfig() {
    url = serverConfig["url"]!;
  }

  Future<Map<String, dynamic>?> getDataCovid19() async {
    try {
      Dio dio = new Dio();
      Response response = await dio.get(
          "https://api.apify.com/v2/key-value-stores/EaCBL1JNntjR3EakU/records/LATEST?disableRedirect=true");
      if (response.statusCode == 200) {
        return response.data["overview"].last;
      }
    } catch (e) {}
  }
}

class Api {
  static const String _domain = "https://emag.thanhnien.vn/covid19/home";
  static const String urlNews =
      "https://thanhnien.vn/rss/thoi-su/dan-sinh-176.rss";

  // Lấy tổng ca nhiễm, điều trị khỏi bệnh, tử vong..
  static Future<SummPatient?> getSumPatient() async {
    SummPatient? _result;
    try {
      var url = Uri.parse('$_domain/getSummPatient');
      http.Response response = await http.post(url);
      if (response.statusCode == 200)
        _result = summPatientFromJson(response.body);
      return _result;
    } catch (e) {
      print(e);
    }
    return _result;
  }

  // Lấy danh sách tin tức mới nhất về covid
  static Future<RssFeed?> getNewsCovid() async {
    try {
      var url = Uri.parse(urlNews);
      http.Response response = await http.get(url);
      String body = utf8.decode(response.bodyBytes);
      print(body.toString());
      var data = RssFeed.parse(body);
      return data;
    } catch (e) {
      //print(e);
    }
    return null;
  }

  //lấy danh sách các tỉnh thành
  static Future<List<Province>> getPatientProvinces() async {
    List<Province> _result = [];
    try {
      var url = Uri.parse('$_domain/getAllPatientProvinces');
      http.Response response = await http.post(url);
      if (response.statusCode == 200) {
        _result = getListProvinceFromJson(response.body).list;
        return _result;
      }
    } catch (e) {
      print(e);
    }
    return _result;
  }

  // lấy danh sách tin tức
  static Future<List<NewsModel>> getListCovidNews() async {
    var rssFeed = await getNewsCovid();
    List<NewsModel> lstNews = [];
    try {
      if (rssFeed != null) {
        for (var item in rssFeed.items!) {
          if (item.link!.toLowerCase().contains("ncov") ||
              item.link!.toLowerCase().contains("covid")) {
            lstNews.add(NewsModel(
                image: RssHelper.getImageFromFeed(item.description!),
                link: item.link!.replaceAll('\'', ""),
                pubDate: DateFormat('dd/MM/yyyy').format(item.pubDate!),
                title: item.title!));
          }
        }
      }
      for (int index = 0; index < 6; index++) {
        lstNews[index].image = RssHelper.changeSizeImage(
            imageUrl: lstNews[index].image, width: 200, height: 80);
      }
    } catch (e) {}
    print(lstNews);
    return lstNews;
  }
}

class RssHelper {
  static String getImageFromFeed(String description) {
    int indexStart = description.indexOf('src=\"') + 5;
    int indexEnd = description.indexOf(' align=') - 1;
    return description.substring(indexStart, indexEnd);
  }

  // Thay đổi kích thước hình height x width
  static String changeSizeImage(
      {required String imageUrl, required int width, required height}) {
    int indexEnd = imageUrl.indexOf('Uploaded') - 1;
    String newSize = "${height}x$width";
    String reuslt = imageUrl.replaceRange(27, indexEnd, newSize);
    return reuslt;
  }
}
