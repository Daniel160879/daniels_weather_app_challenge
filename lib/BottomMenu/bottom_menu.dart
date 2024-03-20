import 'package:flutter/material.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 415,
      height: 300,
      decoration: const BoxDecoration(
        color: Color.fromARGB(117, 72, 39, 85),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(onPressed: () {}, child: const Text('Hourly Forecast')),
              TextButton(onPressed: () {}, child: const Text('Weekly Forecast')),
            ],
          ),
          const Divider(),
        ],
      ),
    );
  }
}
