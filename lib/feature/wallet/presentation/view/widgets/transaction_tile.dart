import 'package:flutter/material.dart';
import 'package:esh7enly_app/feature/wallet/presentation/view/widgets/transaction_icon_badge.dart';
import 'package:esh7enly_app/feature/wallet/presentation/view/widgets/transaction_details.dart';
import 'package:esh7enly_app/feature/wallet/presentation/view/widgets/transaction_amount.dart';

/// A single transaction row widget.
/// Composes [TransactionIconBadge], [TransactionDetails], and [TransactionAmount].
class TransactionTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String date;
  final String amount;
  final bool isCredit;

  const TransactionTile({
    super.key,
    required this.icon,
    required this.title,
    required this.date,
    required this.amount,
    this.isCredit = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFE8ECF0), width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.03),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          TransactionIconBadge(icon: icon),
          const SizedBox(width: 14),
          Expanded(
            child: TransactionDetails(title: title, date: date),
          ),
          TransactionAmount(amount: amount, isCredit: isCredit),
        ],
      ),
    );
  }
}
