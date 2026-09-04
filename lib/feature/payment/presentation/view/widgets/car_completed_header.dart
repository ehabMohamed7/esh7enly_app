import 'package:esh7enly_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CarCompletedHeader extends StatelessWidget {
  final String carName;

  const CarCompletedHeader({super.key, required this.carName});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.directions_car, color: Colors.black87),
        const SizedBox(width: 8),
        Text(
          carName,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryBlue,
          ),
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: BoxDecoration(
            color: const Color(0xFFE8F5E9),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.check_circle, color: Color(0xFF4CAF50), size: 14),
              SizedBox(width: 4),
              Text(
                'Completed',
                style: TextStyle(
                  color: Color(0xFF4CAF50),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
