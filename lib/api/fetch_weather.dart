import 'dart:convert';

import 'package:weather/api/api_key.dart';
import 'package:weather/model/weather/weather.dart';
import 'package:weather/model/weather/weather_current_data.dart';
import 'package:weather/model/weather/weather_data.dart';
import 'package:http/http.dart' as http;

class FetchWeatherAPI {
  WeatherData? weatherData;

  //processing the data from response -> to json
  Future<WeatherData> processData(lat, lon) async {
    var response = await http.get(Uri.parse(apiURL(lat, lon)));
    var jsonString = jsonDecode(response.body);
    weatherData = WeatherData(WeatherDataCurrent.))
  }
}

String apiURL(var lat, var lon) {
  String url;
  url =
      "https://api.openweathermap.org/data/3.0/onecall?lat=$lat&lon=$lon&exclude=mintuely&appid=$apiKey&units=metric";
  return url;
}
