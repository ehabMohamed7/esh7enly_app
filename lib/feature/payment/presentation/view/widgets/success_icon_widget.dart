import 'package:flutter/material.dart';
import 'package:esh7enly_app/core/theme/app_colors.dart';

class SuccessIconWidget extends StatelessWidget {
  const SuccessIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: AppColors.primaryBlue,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: AppColors.primaryBlue.withOpacity(0.3),
            blurRadius: 20,
            spreadRadius: 5,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: const Icon(Icons.check, color: Colors.white, size: 40),
    );
  }
}
