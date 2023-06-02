import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:hw_10/constants/api_const.dart';
import 'package:hw_10/models/news_model.dart';

class TopNewsRepo {
  final http.Client client = http.Client();
  Future fetchTopNews() async {
    final Uri uri = Uri.parse(ApiConst.apiNews);
    final http.Response response = await get(uri);
    if(response.statusCode == 200 || response.statusCode == 201) {
      print(response.body);

      final data = jsonDecode(response.body);
      print(data.runtimeType);
      final topNews = TopNews.fromJson(data);
      print(topNews.runtimeType);
    }

  }
}