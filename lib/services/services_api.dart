import 'package:cowin_1/models/sum_patient_models.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

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
          "https://api.apify.com/v2/key-value-stores/EaCBL1JNntjR3EakU/records/LATEST?disableRedirect=true.");
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
}
