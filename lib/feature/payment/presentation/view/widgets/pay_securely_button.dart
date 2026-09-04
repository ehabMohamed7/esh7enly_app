import 'package:flutter/material.dart';
import 'package:esh7enly_app/core/theme/app_colors.dart';
import 'package:esh7enly_app/core/styles/app_text_styles.dart';
import 'package:go_router/go_router.dart';
import 'package:esh7enly_app/core/router/routes_name.dart';

class PaySecurelyBottomSection extends StatelessWidget {
  const PaySecurelyBottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: double.infinity,
          height: 56,
          child: ElevatedButton.icon(
            onPressed: () {
              GoRouter.of(context).go(RoutesName.chargingComplete);
            },
            icon: const Icon(Icons.lock, color: Colors.white, size: 20),
            label: Text(
              'Pay securely',
              style: AppTextStyles.buttonText.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryBlue,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
        Text(
          'Payments are secure and encrypted.',
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey.shade500,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
