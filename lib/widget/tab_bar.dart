import 'package:flutter/material.dart';
import 'package:weather_app/Weather/weather.dart';
import 'package:weather_app/const/BoxDeco/boxdecoration.dart';
import 'package:weather_app/home/repositories/weather_repository.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  WeatherRepository weatherRepository = WeatherRepository();
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 80,
        width: 410,
        decoration: myTabBarDeco,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.list,
                      size: 30,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 122, bottom: 12),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      size: 30,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 120, top: 25),
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WeatherScreen(
                                      weatherRepository: weatherRepository,
                                    )));
                      },
                      icon: const Icon(
                        Icons.location_on,
                        size: 30,
                      )),
                ),
              ],
            )
          ],
        ),
      )
    ]);
  }
}
