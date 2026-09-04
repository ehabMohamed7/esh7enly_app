import 'package:flutter/material.dart';
import 'package:esh7enly_app/feature/wallet/presentation/view/widgets/top_up_button.dart';

/// The balance card showing current wallet balance.
/// Displays a label, formatted balance, and a [TopUpButton].
class WalletBalanceCard extends StatelessWidget {
  final String balance;
  final VoidCallback? onTopUp;

  const WalletBalanceCard({super.key, required this.balance, this.onTopUp});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFFD5F5E3), Color(0xFFE8F8F0)],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'CURRENT BALANCE',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: Color(0xFF007A5E),
              letterSpacing: 1.5,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'EGP $balance',
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w900,
              color: Color(0xFF1A1A2E),
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 16),
          TopUpButton(onTap: onTopUp),
        ],
      ),
    );
  }
}
