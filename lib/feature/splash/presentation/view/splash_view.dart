import 'package:flutter/material.dart';
import 'package:esh7enly_app/feature/splash/presentation/view_model/splash_view_model.dart';
import 'package:esh7enly_app/feature/splash/presentation/view/widgets/gradient_background.dart';
import 'package:esh7enly_app/feature/splash/presentation/view/widgets/animated_logo.dart';
import 'package:esh7enly_app/feature/splash/presentation/view/widgets/brand_text_section.dart';
import 'package:esh7enly_app/feature/splash/presentation/view/widgets/primary_button.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  late final SplashViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = SplashViewModel();
    _viewModel.initAnimations(this);
    _viewModel.startAnimations();
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 24),
            child: Column(
              children: [
                const Spacer(flex: 2),

                AnimatedLogo(
                  fadeAnimation: _viewModel.logoFade,
                  scaleAnimation: _viewModel.logoScale,
                ),
   

                BrandTextSection(
                  fadeAnimation: _viewModel.textFade,
                  slideAnimation: _viewModel.textSlide,
                ),

                const Spacer(flex: 3),

                SlideTransition(
                  position: _viewModel.buttonSlide,
                  child: FadeTransition(
                    opacity: _viewModel.buttonFade,
                    child: PrimaryButton(
                      text: 'Get Start',
                      onPressed: () => _viewModel.onGetStartTapped(context),
                    ),
                  ),
                ),

                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
