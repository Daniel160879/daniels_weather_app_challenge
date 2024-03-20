import 'package:flutter/material.dart';

class WeeklyCards extends StatelessWidget {
  const WeeklyCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 55,
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(27.5)),
      ),
    );
  }
}
