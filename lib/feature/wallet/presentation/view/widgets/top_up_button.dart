import 'package:flutter/material.dart';

/// A small pill-shaped "Top up" button with a "+" icon.
/// Used inside the [WalletBalanceCard].
class TopUpButton extends StatelessWidget {
  final VoidCallback? onTap;

  const TopUpButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: const Color(0xFF1A1A2E),
          borderRadius: BorderRadius.circular(24),
        ),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.add,
              color: Colors.white,
              size: 18,
            ),
            SizedBox(width: 6),
            Text(
              'Top up',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
