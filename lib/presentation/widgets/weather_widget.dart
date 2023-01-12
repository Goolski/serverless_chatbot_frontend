import 'dart:ui';

import 'package:flutter/material.dart';

class WeatherWidget extends StatelessWidget {
  final DateTime date;
  final double pressure;
  final double temperature;
  final String weather;
  final String city;
  const WeatherWidget({
    required this.date,
    required this.pressure,
    required this.temperature,
    required this.weather,
    required this.city,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textColor = Theme.of(context).colorScheme.primary;
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${date.day}-${date.month}-${date.year}",
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: textColor),
              ),
              Text(
                '$pressure hPa',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: textColor),
              ),
              Text(
                '$temperature°C',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: textColor),
              ),
            ],
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            children: [
              Icon(
                Icons.cloud,
                size: 64,
                color: textColor,
              ),
              Text(
                city,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: textColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
