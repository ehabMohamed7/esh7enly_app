import 'package:flutter/material.dart';
import 'package:esh7enly_app/core/theme/app_colors.dart';
import 'summary_icon_row.dart';
import 'summary_text_row.dart';

class OrderSummaryCard extends StatelessWidget {
  const OrderSummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.05),
            blurRadius: 10,
            spreadRadius: 2,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SummaryIconRow(
            icon: Icons.electric_bolt,
            label: 'Charge level',
            value: '80%',
          ),
          const SizedBox(height: 16),
          const SummaryIconRow(
            icon: Icons.access_time,
            label: 'Estimated time',
            value: '1h 15m',
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Divider(color: Color(0xFFEEEEEE), thickness: 1),
          ),
          const SummaryTextRow(label: 'Subtotal', value: 'EGP 100.00'),
          const SizedBox(height: 16),
          const SummaryTextRow(
            label: 'Service fee',
            value: 'EGP 20.00',
            showInfoIcon: true,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Divider(color: Color(0xFFEEEEEE), thickness: 1),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Total',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryBlue,
                ),
              ),
              Text(
                'EGP 120.00',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: AppColors.primaryBlue,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
