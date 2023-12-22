import 'package:flutter/material.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'There is no weather 😔 start.',
            style: TextStyle(
              fontSize: 22.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'searching now 🔍',
            style: TextStyle(
              fontSize: 22.0,
            ),
          ),
        ],
      ),
    );
  }
}
