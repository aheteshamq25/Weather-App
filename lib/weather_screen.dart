import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weather_app/additional_information.dart';
import 'package:weather_app/hourly_forecast.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        centerTitle: true,
        title: Text(
          'Weather App',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.refresh))],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //main card
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 10,

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            '300K',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Icon(Icons.cloud, size: 64),
                          SizedBox(height: 16),
                          Text('Rain', style: TextStyle(fontSize: 20)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Weather Forecast',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HourlyWeatherForecast(
                    time: "06:00",
                    icon: Icons.cloud,
                    weather: 'rain',
                  ),
                  HourlyWeatherForecast(
                    time: "08:00",
                    icon: Icons.sunny,
                    weather: 'sunny',
                  ),
                  HourlyWeatherForecast(
                    time: "10:00",
                    icon: Icons.sunny,
                    weather: 'sunny',
                  ),
                  HourlyWeatherForecast(
                    time: "12:00",
                    icon: Icons.cloud,
                    weather: 'rain',
                  ),
                  HourlyWeatherForecast(
                    time: "02:00",
                    icon: Icons.cloudy_snowing,
                    weather: 'snow',
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Additional Information',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AdditionalInfo(
                  icon: Icons.water_drop,
                  label: 'Humidity',
                  value: '100',
                ),
                AdditionalInfo(
                  icon: Icons.air_outlined,
                  label: 'Wind Speed',
                  value: '100',
                ),
                AdditionalInfo(
                  icon: Icons.bubble_chart,
                  label: 'Pressure',
                  value: '1000',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
