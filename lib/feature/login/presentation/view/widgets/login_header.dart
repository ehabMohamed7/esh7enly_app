import 'package:flutter/material.dart';

import '../../../../../core/theme/app_colors.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 100, bottom: 80),
      decoration: const BoxDecoration(
        color: AppColors.headerBgForLoginAndSignUp,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(32),
          bottomRight: Radius.circular(32),
        ),
      ),
      child: Column(
        children: [
          const Text(
            'ESH7ENLY',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w900,
              color: AppColors.primaryBlue,
              letterSpacing: 2,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Charge your electric car easily',
            style: TextStyle(
              fontSize: 16,
              color: AppColors.primaryBlue.withValues(alpha: 0.9),
            ),
          ),
        ],
      ),
    );
  }
}
