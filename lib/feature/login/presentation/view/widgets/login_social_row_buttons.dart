import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart' show SvgPicture;

import '../../../../../core/styles/app_assets.dart';
import 'social_login_button.dart';

class LoginSocialRowButtons extends StatelessWidget {
  const LoginSocialRowButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SocialLoginButton(
          label: 'Google',
          icon: SvgPicture.asset(AppAssets.googleLogo),
        ),
        const SizedBox(width: 16),
        SocialLoginButton(
          label: 'Apple',
          icon: SvgPicture.asset(AppAssets.appleLogo),
        ),
      ],
    );
  }
}
