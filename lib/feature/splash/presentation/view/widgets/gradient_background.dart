import 'package:flutter/material.dart';
import 'package:esh7enly_app/core/styles/app_gradients.dart';

class GradientBackground extends StatelessWidget {
  final Widget child;

  const GradientBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(gradient: AppGradients.primaryBackground),
      child: child,
    );
  }
}
