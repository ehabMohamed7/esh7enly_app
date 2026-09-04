import 'package:flutter/material.dart';
import 'package:esh7enly_app/core/theme/app_colors.dart';
import 'package:esh7enly_app/core/styles/app_text_styles.dart';

class CarInfoDetails extends StatelessWidget {
  const CarInfoDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Tesla model',
            style: AppTextStyles.heading2.copyWith(
              color: AppColors.primaryBlue,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Long-term total payment',
            style: AppTextStyles.subtitle2.copyWith(color: Colors.grey),
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildStatItem(
                Icons.battery_charging_full,
                'energy level',
                '68',
                AppColors.progressGreen,
              ),
              _buildStatItem(
                null,
                'Estimated range',
                '340km',
                AppColors.progressGreen,
              ),
            ],
          ),
          const SizedBox(height: 20),
          _buildProgressBar(),
        ],
      ),
    );
  }

  Widget _buildStatItem(
    IconData? icon,
    String title,
    String value,
    Color valueColor,
  ) {
    return Column(
      children: [
        Text(
          title,
          style: AppTextStyles.subtitle2.copyWith(color: Colors.grey[700]),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) ...[
              Icon(icon, color: Colors.black, size: 20),
              const SizedBox(width: 4),
            ],
            Text(
              value,
              style: AppTextStyles.heading2.copyWith(
                color: valueColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildProgressBar() {
    return Container(
      height: 12,
      decoration: BoxDecoration(
        color: AppColors.progressGrey,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: const BoxDecoration(
                color: AppColors.progressYellow,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(6),
                  bottomLeft: Radius.circular(6),
                ),
              ),
            ),
          ),
          Expanded(flex: 4, child: Container(color: AppColors.progressGreen)),
          const Expanded(
            flex: 4,
            child: SizedBox(), // Grey part
          ),
        ],
      ),
    );
  }
}
