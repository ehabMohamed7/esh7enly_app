import 'package:flutter/material.dart';
import 'package:esh7enly_app/core/theme/app_colors.dart';
import 'package:esh7enly_app/core/styles/app_text_styles.dart';

class AddCarButton extends StatelessWidget {
  final VoidCallback onTap;

  const AddCarButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.withOpacity(0.3)),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: AppColors.lightBlueIconBg,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.add,
                  color: AppColors.darkBluePrimary,
                  size: 20,
                ),
              ),
              const SizedBox(width: 16),
              Text(
                'Add a car',
                style: AppTextStyles.bodyLarge.copyWith(
                  color: AppColors.darkBluePrimary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
