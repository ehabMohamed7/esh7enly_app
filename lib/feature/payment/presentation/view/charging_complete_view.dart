import 'package:flutter/material.dart';
import 'widgets/charging_complete_view_body.dart';

class ChargingCompleteView extends StatelessWidget {
  const ChargingCompleteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: ChargingCompleteViewBody()),
    );
  }
}
