import 'package:flutter/material.dart';

const myBoxDeco = BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.all(Radius.circular(35)));
const myBackgroundPageOne = BoxDecoration(
  image: DecorationImage(image: AssetImage('assets/background/background.png'), fit: BoxFit.cover),
);

const myHouseDeco = BoxDecoration(
  image: DecorationImage(
    image: AssetImage('assets/background/House.png'),
    fit: BoxFit.cover,
  ),
);

final myBoxDecoCard = BoxDecoration(
  color: const Color.fromARGB(0, 255, 193, 7),
  image: const DecorationImage(image: AssetImage('assets/WeatherCardSmall.png'), fit: BoxFit.fill),
  borderRadius: BorderRadius.circular(12),
);

const myCardDeco = BoxDecoration(
  image: DecorationImage(image: AssetImage('assets/background/backgroundseite2.png'), fit: BoxFit.cover),
);

const myTextFieldDeco = InputDecoration(
    suffixIcon: Icon(Icons.search_rounded),
    prefixIcon: Icon(Icons.add),
    hintText: '',
    labelText: 'choose your city!',
    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))));

const myTabBarDeco = BoxDecoration(
  color: Colors.transparent,
  image: DecorationImage(
      image: AssetImage(
        'assets/background/TabBar.png',
      ),
      fit: BoxFit.cover),
);

final myWeatherCard1Deco = BoxDecoration(
  color: const Color.fromARGB(0, 133, 46, 46),
  borderRadius: BorderRadius.circular(12),
);
