import 'package:flutter/material.dart';

/// The "Transactions" section title widget.
/// Displays the section label above the transactions list.
class TransactionsSectionTitle extends StatelessWidget {
  const TransactionsSectionTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Transactions',
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w800,
        color: Color(0xFF1A1A2E),
      ),
    );
  }
}
