import 'package:esh7enly_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

/// The header row for the Sessions screen.
/// Shows "Your sessions" title with a filter icon button.
class SessionsHeader extends StatelessWidget {
  final VoidCallback? onFilterTapped;

  const SessionsHeader({super.key, this.onFilterTapped});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Your sessions',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w800,
              color: AppColors.primaryBlue,
            ),
          ),
          IconButton(
            onPressed: onFilterTapped,
            icon: const Icon(
              Icons.tune,
              color: AppColors.primaryBlue,
              size: 24,
            ),
          ),
        ],
      ),
    );
  }
}
