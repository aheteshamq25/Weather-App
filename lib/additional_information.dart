import 'package:flutter/material.dart';

class AdditionalInfo extends StatelessWidget {
  const AdditionalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 125,
          child: Column(
            children: [
              SizedBox(height: 5),
              Icon(Icons.water_drop, size: 30),
              SizedBox(height: 5),
              Text('Humidity'),
              SizedBox(height: 5),
              Text('100'),
            ],
          ),
        ),
      ],
    );
  }
}
