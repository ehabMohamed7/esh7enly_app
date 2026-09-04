import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/router/routes_name.dart';
import '../../../../../core/theme/app_colors.dart';

class SignInAndDontHaveAnyAccount extends StatelessWidget {
  const SignInAndDontHaveAnyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't have account? ",
          style: TextStyle(
            color: Color(0xFF5A5A75),
            fontWeight: FontWeight.w500,
          ),
        ),
        GestureDetector(
          onTap: () {
            context.push(RoutesName.register);
          },
          child: Text(
            'sign Up',
            style: TextStyle(
              color: AppColors.primaryBlue,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
