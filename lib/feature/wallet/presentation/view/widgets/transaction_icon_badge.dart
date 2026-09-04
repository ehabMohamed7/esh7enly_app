import 'package:flutter/material.dart';

/// Icon badge widget for transaction items.
/// Displays an icon inside a circular bordered container.
/// Used to represent the transaction type (charge, top-up, etc.)
class TransactionIconBadge extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color borderColor;

  const TransactionIconBadge({
    super.key,
    required this.icon,
    this.iconColor = const Color(0xFF007A5E),
    this.borderColor = const Color(0xFF007A5E),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        border: Border.all(
          color: borderColor,
          width: 1.5,
        ),
      ),
      child: Icon(
        icon,
        color: iconColor,
        size: 22,
      ),
    );
  }
}
