import 'package:flutter/material.dart';

import '../../../../../core/theme/app_colors.dart';

class RegisterHeader extends StatelessWidget {
  const RegisterHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 80, bottom: 60),
      decoration: const BoxDecoration(
        color: AppColors.headerBgForLoginAndSignUp,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(32),
          bottomRight: Radius.circular(32),
        ),
      ),
      child: const Center(
        child: Text(
          'ESH7ENLY',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w900,
            color: AppColors.primaryBlue,
            letterSpacing: 2,
          ),
        ),
      ),
    );
  }
}
