import 'package:flutter/material.dart';

/// Displays the transaction amount with the correct color and sign.
/// Green for credits (top-ups), dark for debits (charges).
class TransactionAmount extends StatelessWidget {
  final String amount;
  final bool isCredit;

  const TransactionAmount({
    super.key,
    required this.amount,
    required this.isCredit,
  });

  @override
  Widget build(BuildContext context) {
    final prefix = isCredit ? '+ ' : '- ';
    final color = isCredit ? const Color(0xFF007A5E) : const Color(0xFF1A1A2E);

    return Text(
      '$prefix$amount',
      style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w700,
        color: color,
      ),
    );
  }
}
