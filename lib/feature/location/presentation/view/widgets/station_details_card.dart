import 'package:flutter/material.dart';
import 'station_title_header.dart';
import 'station_distance_info.dart';
import 'charger_types_row.dart';
import 'site_confirmation_button.dart';

class StationDetailsCard extends StatelessWidget {
  final VoidCallback? onConfirmPressed;

  const StationDetailsCard({
    super.key,
    this.onConfirmPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 22),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(28),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.12),
            blurRadius: 24,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const StationTitleHeader(
            title: 'The North Coast\ncharging station',
          ),
          const SizedBox(height: 10),
          const StationDistanceInfo(
            text: 'It is 3.2 km away • 12 minutes',
          ),
          const SizedBox(height: 18),
          const ChargerTypesRow(),
          const SizedBox(height: 22),
          SiteConfirmationButton(
            onPressed: onConfirmPressed,
          ),
        ],
      ),
    );
  }
}
