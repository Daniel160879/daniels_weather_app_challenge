import 'package:flutter/material.dart';
import 'package:weather_app/const/BoxDeco/boxdecoration.dart';
import 'package:weather_app/const/TextStyle/textstyle.dart';
import 'package:weather_app/home/models/weather.dart';
import 'package:weather_app/home/repositories/weather_repository.dart';
import 'package:weather_app/BottomMenu/bottom_menu.dart';

class WeatherCard extends StatefulWidget {
  const WeatherCard({
    super.key,
    required this.city,
  });
  final String city;

  @override
  State<WeatherCard> createState() => _WeatherCardState();
}

class _WeatherCardState extends State<WeatherCard> {
  late final Future<Weather> weatherNow;

  @override
  void initState() {
    super.initState();
    weatherNow = WeatherRepository().getWeather(widget.city);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 200,
      decoration: myWeatherCard1Deco,
      child: Center(
        child: Column(
          children: [
            FutureBuilder<Weather>(
                future: weatherNow,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (BuildContext context) {
                                  return const BottomMenu();
                                });
                          },
                          child: Text(
                            widget.city,
                            style: myWeatherHeaderTextStyle,
                          ),
                        ),
                        Text('${snapshot.data!.temp}', style: myWeatherHeaderTextStyle),
                        const Text(
                          'clearly',
                          style: myWeatherRowTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'H: ${snapshot.data!.maxTemp}°',
                              style: myWeatherRowTextStyle,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'L: ${snapshot.data!.minTemp}°',
                              style: myWeatherRowTextStyle,
                            ),
                          ],
                        ),
                      ],
                    );
                  }
                }),
          ],
        ),
      ),
    );
  }
}
