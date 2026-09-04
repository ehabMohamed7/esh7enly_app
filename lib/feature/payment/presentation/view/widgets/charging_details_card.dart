import 'package:flutter/material.dart';
import 'charging_stats_row.dart';
import 'car_completed_header.dart';

class ChargingDetailsCard extends StatelessWidget {
  const ChargingDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: const Column(
        children: [
          CarCompletedHeader(carName: 'BYD ATTO 3'),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: Divider(color: Color(0xFFEEEEEE), thickness: 1),
          ),
          ChargingStatsRow(),
        ],
      ),
    );
  }
}
