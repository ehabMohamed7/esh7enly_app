import 'package:esh7enly_app/core/widgets/auth_primary_button.dart';
import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    super.key,
    required this.onPressed,
    this.isLoading = false,
  });

  final VoidCallback onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return AuthPrimaryButton(
      label: 'Sign in',
      onPressed: onPressed,
      isLoading: isLoading,
    );
  }
}
