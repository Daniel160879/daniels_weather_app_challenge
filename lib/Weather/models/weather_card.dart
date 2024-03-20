import 'package:flutter/material.dart';
import 'package:weather_app/const/BoxDeco/boxdecoration.dart';
import 'package:weather_app/home/models/weather.dart';
import 'package:weather_app/home/repositories/weather_repository.dart';

class WeatherCard2 extends StatefulWidget {
  const WeatherCard2({
    super.key,
    required this.city,
  });
  final String city;

  @override
  State<WeatherCard2> createState() => _WeatherCardState();
}

class _WeatherCardState extends State<WeatherCard2> {
  late final Future<Weather> weatherNow;

  @override
  void initState() {
    super.initState();
    weatherNow = WeatherRepository().getWeather(widget.city);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Container(
        height: 150,
        width: 300,
        decoration: myBoxDecoCard,
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
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(right: 220, top: 30),
                            child: Text(
                              '${snapshot.data!.temp}°',
                              style: const TextStyle(fontSize: 46),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(right: 220, top: 0),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 35,
                              ),
                              Text('H: ${snapshot.data!.maxTemp}'),
                              Text('L: ${snapshot.data!.minTemp}')
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 220, top: 0),
                          child: Text(
                            widget.city,
                          ),
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
