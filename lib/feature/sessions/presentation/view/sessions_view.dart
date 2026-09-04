import 'package:flutter/material.dart';
import 'package:esh7enly_app/feature/home/presentation/view/widgets/custom_bottom_nav_bar.dart';
import 'package:esh7enly_app/feature/sessions/presentation/view/widgets/sessions_view_body.dart';

/// The Sessions screen — shows a list of past charging sessions.
/// Reuses [CustomBottomNavBar] with index 2 (sessions tab selected).
class SessionsView extends StatelessWidget {
  const SessionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: SessionsViewBody()),
      bottomNavigationBar: CustomBottomNavBar(selectedIndex: 2),
    );
  }
}
