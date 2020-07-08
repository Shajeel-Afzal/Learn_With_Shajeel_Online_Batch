import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/models/WeatherModel.dart';

class WeatherAPIService {
  Future<WeatherModel> getWeatherInfo() async {
    var response = await http.get(
        "http://api.openweathermap.org/data/2.5/weather?q=Faisalabad&appid=249cf301407063a60ce85f642ea7c6fa");

    print(response.statusCode);
    print(response.body);

    print(jsonEncode(response.body));

    if (response.statusCode == 200) {
      print("Successfully got the weather information!");

      WeatherModel weatherModel =
          WeatherModel.fromJson(jsonDecode(response.body));

      return weatherModel;
    } else {
      print("Something went wrong with the API.");
      return null;
    }
  }
}
