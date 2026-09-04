import 'package:esh7enly_app/core/router/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// The app bar for the Wallet screen.
/// Shows a back arrow and centered "Wallet" title.
class WalletAppBar extends StatelessWidget {
  final VoidCallback? onBackTapped;

  const WalletAppBar({super.key, this.onBackTapped});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: onBackTapped ?? () => context.go(RoutesName.sessions),
          child: const Icon(
            Icons.arrow_back,
            color: Color(0xFF1A1A2E),
            size: 24,
          ),
        ),
        const Expanded(
          child: Center(
            child: Text(
              'Wallet',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xFF1A1A2E),
              ),
            ),
          ),
        ),
        // Invisible spacer to balance the back arrow
        const SizedBox(width: 24),
      ],
    );
  }
}
