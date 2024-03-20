import 'package:flutter/material.dart';
import 'package:weather_app/widget/tab_bar.dart';
import 'package:weather_app/widget/weather_card.dart';

import '../const/BoxDeco/boxdecoration.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(0, 123, 40, 40),
      ),
      bottomNavigationBar: const Tabbar(),
      body: Container(
        decoration: myBackgroundPageOne,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const WeatherCard(
                city: 'Köln',
              ),
              const SizedBox(
                height: 30,
              ),
              Container(height: 390, width: 410, decoration: myHouseDeco),
              const SizedBox(
                height: 78,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
