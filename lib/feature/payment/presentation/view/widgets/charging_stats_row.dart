import 'package:flutter/material.dart';
import 'stat_item.dart';

class ChargingStatsRow extends StatelessWidget {
  const ChargingStatsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Expanded(
          child: StatItem(
            title: 'Energy used',
            value: '32.6',
            unit: 'kWh',
          ),
        ),
        Container(
          height: 40,
          width: 1,
          color: Colors.grey.shade200,
        ),
        const Expanded(
          child: StatItem(
            title: 'Time',
            value: '1h 08m',
          ),
        ),
        Container(
          height: 40,
          width: 1,
          color: Colors.grey.shade200,
        ),
        const Expanded(
          child: StatItem(
            title: 'Total cost',
            value: '48.40',
            unit: 'EGP',
          ),
        ),
      ],
    );
  }
}
