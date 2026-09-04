import 'package:flutter/material.dart';
import 'package:esh7enly_app/feature/sessions/presentation/view/widgets/session_location_header.dart';
import 'package:esh7enly_app/feature/sessions/presentation/view/widgets/session_stats_row.dart';

/// A card widget representing a single charging session.
/// Composes [SessionLocationHeader] and [SessionStatsRow].
class SessionCard extends StatelessWidget {
  final String locationName;
  final String date;
  final String status;
  final String chargedPercent;
  final String energy;
  final String price;

  const SessionCard({
    super.key,
    required this.locationName,
    required this.date,
    required this.status,
    required this.chargedPercent,
    required this.energy,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFE8ECF0), width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          SessionLocationHeader(
            locationName: locationName,
            date: date,
            status: status,
          ),
          const SizedBox(height: 16),
          const Divider(height: 1, color: Color(0xFFEEEEEE)),
          const SizedBox(height: 12),
          SessionStatsRow(
            chargedPercent: chargedPercent,
            energy: energy,
            price: price,
          ),
        ],
      ),
    );
  }
}
