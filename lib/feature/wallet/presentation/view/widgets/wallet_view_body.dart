import 'package:flutter/material.dart';
import 'package:esh7enly_app/feature/wallet/presentation/view/widgets/wallet_app_bar.dart';
import 'package:esh7enly_app/feature/wallet/presentation/view/widgets/wallet_balance_card.dart';
import 'package:esh7enly_app/feature/wallet/presentation/view/widgets/transactions_section_title.dart';
import 'package:esh7enly_app/feature/wallet/presentation/view/widgets/transactions_list.dart';

class WalletViewBody extends StatelessWidget {
  const WalletViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          const WalletAppBar(),
          const SizedBox(height: 24),
          const WalletBalanceCard(balance: '250.00'),
          const SizedBox(height: 28),
          const TransactionsSectionTitle(),
          const SizedBox(height: 16),
          Expanded(
            child: SingleChildScrollView(child: const TransactionsList()),
          ),
        ],
      ),
    );
  }
}
