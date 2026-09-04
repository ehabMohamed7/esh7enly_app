import 'package:flutter/material.dart';

/// Displays the transaction title and date in a column layout.
/// Used alongside [TransactionIconBadge] inside [TransactionTile].
class TransactionDetails extends StatelessWidget {
  final String title;
  final String date;

  const TransactionDetails({
    super.key,
    required this.title,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xFF1A1A2E),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          date,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w400,
            color: Color(0xFF9E9E9E),
          ),
        ),
      ],
    );
  }
}
