import 'package:flutter/material.dart';
import 'package:esh7enly_app/feature/home/presentation/view/widgets/custom_bottom_nav_bar.dart';
import 'package:esh7enly_app/feature/wallet/presentation/view/widgets/wallet_view_body.dart';

/// The Wallet screen — shows wallet balance and transaction history.
/// Reuses [CustomBottomNavBar] with index 3 (Wallet tab selected).
class WalletView extends StatelessWidget {
  const WalletView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: WalletViewBody()),
      bottomNavigationBar: CustomBottomNavBar(selectedIndex: 3),
    );
  }
}
