import 'package:esh7enly_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class StationTitleHeader extends StatelessWidget {
  final String title;

  const StationTitleHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: AppColors.primaryBlue,
        fontFamily: 'serif',
        height: 1.25,
      ),
    );
  }
}
