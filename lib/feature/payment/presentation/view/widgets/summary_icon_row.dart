import 'package:flutter/material.dart';
import 'package:esh7enly_app/core/theme/app_colors.dart';

class SummaryIconRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const SummaryIconRow({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 16, color: Colors.grey.shade600),
        const SizedBox(width: 8),
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey.shade600,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Spacer(),
        Text(
          value,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: AppColors.textDarkBlue,
          ),
        ),
      ],
    );
  }
}
