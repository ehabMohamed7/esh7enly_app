import 'package:flutter/material.dart';
import 'package:esh7enly_app/core/theme/app_colors.dart';
import 'package:esh7enly_app/core/styles/app_text_styles.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/router/routes_name.dart';

class ChooseCarHeader extends StatelessWidget {
  const ChooseCarHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              context.go(RoutesName.home);
            },
            child: const Icon(Icons.arrow_back, color: AppColors.primaryBlue),
          ),
          const SizedBox(width: 8),
          Text(
            'Choose your car',
            style: AppTextStyles.heading2.copyWith(
              color: AppColors.primaryBlue,
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),
    );
  }
}
