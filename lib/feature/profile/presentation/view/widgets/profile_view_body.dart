import 'package:flutter/material.dart';
import 'package:esh7enly_app/feature/profile/presentation/view/widgets/profile_header.dart';
import 'package:esh7enly_app/feature/profile/presentation/view/widgets/profile_menu_item.dart';
import 'package:esh7enly_app/core/theme/app_colors.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/router/app_router.dart';
import '../../../../../core/router/routes_name.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 20.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(width: 24),
                const Text(
                  'Profile',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: AppColors.textDark,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications_none_outlined,
                    color: AppColors.textDark,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),

          const ProfileHeader(),
          const SizedBox(height: 32),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                ProfileMenuItem(
                  icon: Icons.directions_car_outlined,
                  title: 'My Cars',
                  onTap: () {},
                ),
                const SizedBox(height: 16),
                ProfileMenuItem(
                  icon: Icons.payments_outlined,
                  title: 'Payment Methods',
                  onTap: () {
                    AppRouter.router.go('/payment');
                  },
                ),
                const SizedBox(height: 16),
                ProfileMenuItem(
                  icon: Icons.location_on_outlined,
                  title: 'Addresses',
                  onTap: () {},
                ),
                const SizedBox(height: 16),
                ProfileMenuItem(
                  icon: Icons.settings_outlined,
                  title: 'Settings',
                  onTap: () {},
                ),
                const SizedBox(height: 16),
                ProfileMenuItem(
                  icon: Icons.help_outline,
                  title: 'Help Center',
                  onTap: () {},
                ),
                const SizedBox(height: 32),

                ProfileMenuItem(
                  icon: Icons.logout,
                  title: 'Log out',
                  isLogout: true,
                  onTap: () {
                    context.go(RoutesName.login);
                  },
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
