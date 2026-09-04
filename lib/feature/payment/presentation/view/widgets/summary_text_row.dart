import 'package:flutter/material.dart';
import 'package:esh7enly_app/core/theme/app_colors.dart';

class SummaryTextRow extends StatelessWidget {
  final String label;
  final String value;
  final bool showInfoIcon;

  const SummaryTextRow({
    super.key,
    required this.label,
    required this.value,
    this.showInfoIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey.shade600,
            fontWeight: FontWeight.w500,
          ),
        ),
        if (showInfoIcon) ...[
          const SizedBox(width: 4),
          Icon(Icons.info_outline, size: 14, color: Colors.grey.shade600),
        ],
        const Spacer(),
        Text(
          value,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: AppColors.textDarkBlue,
          ),
        ),
      ],
    );
  }
}
