import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:esh7enly_app/core/router/routes_name.dart';

class SplashViewModel {
  late final AnimationController logoAnimationController;
  late final AnimationController textAnimationController;
  late final AnimationController buttonAnimationController;

  late final Animation<double> logoFade;
  late final Animation<double> logoScale;
  late final Animation<double> textFade;
  late final Animation<Offset> textSlide;
  late final Animation<double> buttonFade;
  late final Animation<Offset> buttonSlide;

  void initAnimations(TickerProvider vsync) {
    logoAnimationController = AnimationController(
      vsync: vsync,
      duration: const Duration(milliseconds: 1200),
    );
    logoFade = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: logoAnimationController, curve: Curves.easeOut),
    );
    logoScale = Tween<double>(begin: 0.6, end: 1.0).animate(
      CurvedAnimation(
        parent: logoAnimationController,
        curve: Curves.elasticOut,
      ),
    );

    textAnimationController = AnimationController(
      vsync: vsync,
      duration: const Duration(milliseconds: 800),
    );
    textFade = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: textAnimationController, curve: Curves.easeIn),
    );
    textSlide = Tween<Offset>(begin: const Offset(0, 0.3), end: Offset.zero)
        .animate(
          CurvedAnimation(
            parent: textAnimationController,
            curve: Curves.easeOut,
          ),
        );

    buttonAnimationController = AnimationController(
      vsync: vsync,
      duration: const Duration(milliseconds: 600),
    );
    buttonFade = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: buttonAnimationController, curve: Curves.easeIn),
    );
    buttonSlide = Tween<Offset>(begin: const Offset(0, 0.5), end: Offset.zero)
        .animate(
          CurvedAnimation(
            parent: buttonAnimationController,
            curve: Curves.easeOut,
          ),
        );
  }

  Future<void> startAnimations() async {
    logoAnimationController.forward();
    await Future.delayed(const Duration(milliseconds: 600));
    textAnimationController.forward();
    await Future.delayed(const Duration(milliseconds: 400));
    buttonAnimationController.forward();
  }

  void onGetStartTapped(BuildContext context) {
    context.go(RoutesName.login);
  }

  void dispose() {
    logoAnimationController.dispose();
    textAnimationController.dispose();
    buttonAnimationController.dispose();
  }
}
