import 'package:flutter/material.dart';
import 'package:esh7enly_app/feature/sessions/presentation/view/widgets/session_stat_item.dart';

/// Displays the Charged / Energy / Price stats in a horizontal row
/// at the bottom of a session card.
class SessionStatsRow extends StatelessWidget {
  final String chargedPercent;
  final String energy;
  final String price;

  const SessionStatsRow({
    super.key,
    required this.chargedPercent,
    required this.energy,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SessionStatItem(
            label: 'Charged',
            value: chargedPercent,
            valueColor: const Color(0xFF1A73E8),
          ),
        ),
        Expanded(
          child: SessionStatItem(label: 'Energy', value: energy),
        ),
        Expanded(
          child: SessionStatItem(
            label: 'Price',
            value: price,
            alignment: CrossAxisAlignment.end,
          ),
        ),
      ],
    );
  }
}
