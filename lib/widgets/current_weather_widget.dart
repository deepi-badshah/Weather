import 'package:flutter/material.dart';
import 'package:weather/model/weather/weather_current_data.dart';

import '../utils/custom_colors.dart';

class CurrentWeatherWidget extends StatelessWidget {
  final WeatherDataCurrent weatherDataCurrent;
  const CurrentWeatherWidget({Key? key, required this.weatherDataCurrent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // temperature area
        temperatureAreaWidget(),
        // more details -- windspeed, humidity, clouds
        currentWeatherMoreDetailsWidget(),
      ],
    );
  }

  Widget currentWeatherMoreDetailsWidget() {
    return Container();
  }

  Widget temperatureAreaWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          "assets/weather/${weatherDataCurrent.current.weather![0].icon}.png",
          height: 80,
          width: 80,
        ),
        Container(
          height: 50,
          width: 1,
          color: CustomColors.dividerLine,
        )
      ],
    );
  }
}
