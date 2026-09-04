import 'package:flutter/material.dart';
import 'package:esh7enly_app/core/theme/app_colors.dart';
import 'package:esh7enly_app/core/styles/app_text_styles.dart';

/// A reusable primary CTA button with gradient background and arrow icon.
class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool showArrow;

  const PrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.showArrow = true,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryBlue,
          foregroundColor: AppColors.buttonText,
          elevation: 8,
          shadowColor: AppColors.textDark.withValues(alpha: 0.4),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: AppTextStyles.buttonText.copyWith(
                color: AppColors.backgroundWhite,
              ),
            ),
            if (showArrow) ...[
              const SizedBox(width: 8),
              Icon(
                Icons.arrow_forward,
                color: AppColors.backgroundWhite,
                size: 22,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
