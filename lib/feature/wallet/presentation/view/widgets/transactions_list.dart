import 'package:flutter/material.dart';
import 'package:esh7enly_app/feature/wallet/presentation/view/widgets/transaction_tile.dart';

/// A scrollable list of [TransactionTile] widgets.
/// Displays all wallet transactions.
class TransactionsList extends StatelessWidget {
  const TransactionsList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TransactionTile(
          icon: Icons.ev_station_outlined,
          title: 'Charge at Mall of Egypt',
          date: 'Today, 10:24 AM',
          amount: 'EGP 48.40',
          isCredit: false,
        ),
        SizedBox(height: 12),
        TransactionTile(
          icon: Icons.add_circle_outline,
          title: 'Top up',
          date: 'May 10, 2024',
          amount: 'EGP 300.00',
          isCredit: true,
        ),
        SizedBox(height: 12),
        TransactionTile(
          icon: Icons.ev_station_outlined,
          title: 'Charge at New Cairo Club',
          date: 'May 06, 2024',
          amount: 'EGP 55.30',
          isCredit: false,
        ),
      ],
    );
  }
}
