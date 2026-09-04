import 'package:flutter/material.dart';
import 'package:esh7enly_app/core/theme/app_colors.dart';
import 'package:esh7enly_app/core/styles/app_text_styles.dart';

/// Animated brand text section: brand name, tagline, and subtitle.
/// Each text element slides up and fades in with a staggered delay.
class BrandTextSection extends StatelessWidget {
  final Animation<double> fadeAnimation;
  final Animation<Offset> slideAnimation;

  const BrandTextSection({
    super.key,
    required this.fadeAnimation,
    required this.slideAnimation,
  });

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: slideAnimation,
      child: FadeTransition(
        opacity: fadeAnimation,
        child: Column(
          children: [
            
         

            Text(
              'Power on the go',
              style: AppTextStyles.subtitle1.copyWith(
                color: AppColors.textWhite,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 6),

            Text(
              'we bring the charge to you',
              style: AppTextStyles.subtitle2.copyWith(
                color: AppColors.cardGradientStart,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
