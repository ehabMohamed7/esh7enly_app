import 'package:esh7enly_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:esh7enly_app/core/router/routes_name.dart';
import 'success_icon_widget.dart';
import 'charging_details_card.dart';
import 'primary_action_button.dart';
import 'secondary_action_button.dart';

class ChargingCompleteViewBody extends StatelessWidget {
  const ChargingCompleteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(flex: 2),
          const SuccessIconWidget(),
          const SizedBox(height: 32),
          const Text(
            'Charging Complete',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryBlue,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'your car is ready to go',
            style: TextStyle(
              fontSize: 14,
              color: Colors.black54,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 48),
          const ChargingDetailsCard(),
          const Spacer(flex: 3),
          PrimaryActionButton(
            text: 'View Receipt',
            onPressed: () {
              context.go(RoutesName.payment);
            },
          ),
          const SizedBox(height: 16),
          SecondaryActionButton(
            text: 'Back to Home',
            onPressed: () {
              GoRouter.of(context).go(RoutesName.home);
            },
          ),
        ],
      ),
    );
  }
}
