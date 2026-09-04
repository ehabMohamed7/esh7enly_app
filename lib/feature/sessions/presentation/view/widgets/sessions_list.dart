import 'package:flutter/material.dart';
import 'package:esh7enly_app/feature/sessions/presentation/view/widgets/session_card.dart';

/// A scrollable list of [SessionCard] widgets.
/// Displays all past charging sessions.
class SessionsList extends StatelessWidget {
  const SessionsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      children: const [
        SessionCard(
          locationName: 'The Red Sea',
          date: 'Today, 10:24 AM',
          status: 'Completed',
          chargedPercent: '68%',
          energy: '32.6 kWh',
          price: 'EGP 48.40',
        ),
        SessionCard(
          locationName: 'New Cairo Club',
          date: 'May 10, 2024',
          status: 'Completed',
          chargedPercent: '80%',
          energy: '37.5 kWh',
          price: 'EGP 55.30',
        ),
        SessionCard(
          locationName: 'City Stars Mall',
          date: 'May 06, 2024',
          status: 'Completed',
          chargedPercent: '75%',
          energy: '29.2 kWh',
          price: 'EGP 43.80',
        ),
      ],
    );
  }
}
