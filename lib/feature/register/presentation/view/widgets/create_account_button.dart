import 'package:esh7enly_app/core/widgets/auth_primary_button.dart';
import 'package:flutter/material.dart';

class CreateAccountButton extends StatelessWidget {
  const CreateAccountButton({
    super.key,
    required this.onPressed,
    this.isLoading = false,
  });

  final VoidCallback onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return AuthPrimaryButton(
      label: 'Create Account',
      onPressed: onPressed,
      isLoading: isLoading,
    );
  }
}
