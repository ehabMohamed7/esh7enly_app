import 'package:flutter/material.dart';

import '../../../../../core/styles/app_assets.dart';

class CarDisplayCard extends StatelessWidget {
  const CarDisplayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),

      child: // Background/Car Image
      Center(
        child: Image.asset(AppAssets.carImage2),
      ),
    );
  }
}
