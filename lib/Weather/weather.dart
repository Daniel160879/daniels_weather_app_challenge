import 'package:flutter/material.dart';
import 'package:weather_app/Weather/Models/weather_card.dart';
import 'package:weather_app/const/BoxDeco/boxdecoration.dart';
import 'package:weather_app/repositories/weather_repository.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key, required this.weatherRepository});

  final WeatherRepository weatherRepository;

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  final TextEditingController cityController = TextEditingController();
  late List<String> filteredCitys = [];

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned.fill(
        child: Container(decoration: myCardDeco),
      ),
      Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: Column(
            children: [
              SizedBox(
                height: 60,
                width: 275,
                child: TextField(
                  decoration: myTextFieldDeco,
                  controller: cityController,
                  onSubmitted: (value) {
                    setState(() {
                      widget.weatherRepository.addCity(value);
                      cityController.clear();
                    });
                  },
                ),
              ),
              Expanded(
                  child: ListView.builder(
                itemCount: widget.weatherRepository.citys.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onLongPress: () {
                        setState(() {
                          widget.weatherRepository.citys.removeAt(index);
                        });
                      },
                      child: WeatherCard2(city: widget.weatherRepository.citys[index]));
                },
              ))
            ],
          ))
    ]);
  }
}
