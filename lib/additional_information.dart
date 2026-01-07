import 'package:flutter/material.dart';

class AdditionalInfo extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  const AdditionalInfo({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 125,
          child: Column(
            children: [
              const SizedBox(height: 5),
              Icon(icon, size: 40),
              SizedBox(height: 5),
              Text(label),
              SizedBox(height: 5),
              Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ],
    );
  }
}
