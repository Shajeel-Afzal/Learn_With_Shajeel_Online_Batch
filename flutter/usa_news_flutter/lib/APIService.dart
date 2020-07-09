import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:usa_news_flutter/APIResponse.dart';

class APIService {
  String API_KEY = "4492785aca7445acafe8a922adcbbc7d";

  Future<APIResponse> getUsaNews() async {
    var response = await http.get(
        "https://newsapi.org/v2/top-headlines?country=us&apiKey=" + API_KEY);
    print(response.statusCode);
    print(response.body);

    APIResponse apiResponse = APIResponse.fromJson(jsonDecode(response.body));
    return apiResponse;
  }
}
