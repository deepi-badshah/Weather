import 'package:weather/model/weather/weather_current_data.dart';

class WeatherData {
  final WeatherDataCurrent? current;
  WeatherData([this.current]);
  // function to fetch these values
  WeatherDataCurrent getCurrrentWeather() => current!;
}
