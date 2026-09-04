import 'package:esh7enly_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

/// A single stat column (label + value) used inside [SessionStatsRow].
/// Accepts optional [valueColor] and [alignment] for flexible positioning.
class SessionStatItem extends StatelessWidget {
  final String label;
  final String value;
  final Color valueColor;
  final CrossAxisAlignment alignment;

  const SessionStatItem({
    super.key,
    required this.label,
    required this.value,
    this.valueColor = AppColors.primaryBlue,
    this.alignment = CrossAxisAlignment.start,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Color(0xFF7B8794),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w700,
            color: valueColor,
          ),
        ),
      ],
    );
  }
}
