import 'package:flutter/material.dart';

class StationDistanceInfo extends StatelessWidget {
  final String text;

  const StationDistanceInfo({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Color(0xFF6B7280),
        letterSpacing: 0.2,
      ),
    );
  }
}
