import 'package:flutter/material.dart';
import 'package:esh7enly_app/core/theme/app_colors.dart';

class VisaIconWidget extends StatelessWidget {
  const VisaIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xFFF0F2F5),
        borderRadius: BorderRadius.circular(4),
      ),
      child: const Text(
        'VISA',
        style: TextStyle(
          color: AppColors.primaryBlue,
          fontWeight: FontWeight.w900,
          fontStyle: FontStyle.italic,
          fontSize: 16,
        ),
      ),
    );
  }
}
