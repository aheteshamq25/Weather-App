import 'package:flutter/material.dart';

class HourlyWeatherForecast extends StatelessWidget {
  final String time;
  final IconData icon;
  final String weather;
  const HourlyWeatherForecast({
    super.key,
    required this.time,
    required this.icon,
    required this.weather,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110,
      child: Card(
        elevation: 10,
        shadowColor: Colors.black,
        child: Column(
          children: [
            const SizedBox(height: 15),
            Text(
              time,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 5),
            Icon(icon, size: 50),
            const SizedBox(height: 5),
            Text(weather),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
