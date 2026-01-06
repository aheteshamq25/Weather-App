import 'package:flutter/material.dart';

class HourlyWeatherForecast extends StatelessWidget {
  const HourlyWeatherForecast({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 110,
      child: Card(
        elevation: 10,
        shadowColor: Colors.black,
        child: Column(
          children: [
            SizedBox(height: 15),
            Text(
              '03:00',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 5),
            Icon(Icons.cloud, size: 50),
            SizedBox(height: 5),
            Text('Rain'),
            SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
