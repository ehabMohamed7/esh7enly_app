import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:esh7enly_app/core/styles/app_assets.dart';

/// Animated logo widget that fades in and scales up for a premium feel.
/// Uses [SvgPicture] for crisp, resolution-independent rendering
/// with a fully transparent background.
class AnimatedLogo extends StatelessWidget {
  final Animation<double> fadeAnimation;
  final Animation<double> scaleAnimation;

  const AnimatedLogo({
    super.key,
    required this.fadeAnimation,
    required this.scaleAnimation,
  });

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: fadeAnimation,
      child: ScaleTransition(
        scale: scaleAnimation,
        child: Image.asset(
          
          AppAssets.esh7enly,
          width: MediaQuery.of(context).size.width * 0.75,
          height: 150,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
