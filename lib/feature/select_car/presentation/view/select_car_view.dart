import 'package:esh7enly_app/feature/select_car/presentation/view/widgets/car_display_card.dart';
import 'package:flutter/material.dart';
import 'package:esh7enly_app/core/theme/app_colors.dart';
import 'package:esh7enly_app/feature/select_car/presentation/view/widgets/choose_car_header.dart';
import 'package:esh7enly_app/feature/select_car/presentation/view/widgets/car_info_details.dart';
import 'package:esh7enly_app/feature/select_car/presentation/view/widgets/add_car_button.dart';
import 'package:esh7enly_app/feature/select_car/presentation/view/widgets/continue_action_button.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/router/routes_name.dart';

class SelectCarView extends StatelessWidget {
  const SelectCarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: AppColors.backgroundWhite,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              const ChooseCarHeader(),
              const SizedBox(height: 16),
              const CarDisplayCard(),
              const SizedBox(height: 16),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildDot(false),
                  const SizedBox(width: 6),
                  _buildDot(false),
                  const SizedBox(width: 6),
                  _buildDot(true),
                ],
              ),
              const SizedBox(height: 24),
              const CarInfoDetails(),
              const SizedBox(height: 32),
              AddCarButton(
                onTap: () {
                  //TODO: implement add car functionality
                },
              ),
              const Spacer(),
              ContinueActionButton(
                onPressed: () {
                  //TODO: Navigate to location view
                  GoRouter.of(context).go(RoutesName.location);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDot(bool isActive) {
    return Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        color: isActive
            ? AppColors.progressGreen
            : Colors.grey.withOpacity(0.3),
        shape: BoxShape.circle,
      ),
    );
  }
}
