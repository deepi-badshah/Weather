import 'dart:convert';

import 'package:weather/model/weather/weather_current_data.dart';
import 'package:weather/model/weather/weather_data.dart';
import 'package:http/http.dart' as http;
import 'package:weather/utils/api_url.dart';

class FetchWeatherAPI {
  WeatherData? weatherData;

  //processing the data from response -> to json
  Future<WeatherData> processData(lat, lon) async {
    var response = await http.get(Uri.parse(apiURL(lat, lon)));
    var jsonString = jsonDecode(response.body);
    weatherData = WeatherData(WeatherDataCurrent.fromJson(jsonString));

    return weatherData!;
  }
}
