import 'package:flutter/material.dart';
import 'package:esh7enly_app/feature/home/presentation/view/widgets/custom_bottom_nav_bar.dart';
import 'package:esh7enly_app/feature/profile/presentation/view/widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: ProfileViewBody()),
      bottomNavigationBar: CustomBottomNavBar(selectedIndex: 4),
    );
  }
}
