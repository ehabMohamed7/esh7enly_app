import 'package:esh7enly_app/core/theme/app_colors.dart';
import 'package:esh7enly_app/core/utils/app_validators.dart';
import 'package:esh7enly_app/core/widgets/app_text_form_field.dart';
import 'package:esh7enly_app/feature/auth/presentation/view_model/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'forget_password.dart';
import 'login_social_row_buttons.dart';
import 'or_divider.dart';
import 'sign_in_button.dart';
import 'signin&_dont_any_account.dart';

class LoginFormCard extends StatefulWidget {
  const LoginFormCard({super.key, this.isLoading = false});

  final bool isLoading;

  @override
  State<LoginFormCard> createState() => _LoginFormCardState();
}

class _LoginFormCardState extends State<LoginFormCard> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _onSignIn() {
    if (!(_formKey.currentState?.validate() ?? false)) return;
    context.read<AuthCubit>().login(
      email: _emailController.text,
      password: _passwordController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            const Text(
              'LOGIN',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w900,
                color: AppColors.primaryBlue,
                letterSpacing: 1.2,
              ),
            ),
            const SizedBox(height: 32),
            AppTextFormField(
              controller: _emailController,
              hintText: 'Email',
              prefixIcon: Icons.email_outlined,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              validator: AppValidators.email,
            ),
            const SizedBox(height: 16),
            AppTextFormField(
              controller: _passwordController,
              hintText: 'Password',
              prefixIcon: Icons.lock_outline,
              isPassword: true,
              textInputAction: TextInputAction.done,
              validator: AppValidators.password,
            ),
            const SizedBox(height: 16),
            const Align(
              alignment: Alignment.centerRight,
              child: ForgetPassword(),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: SignInButton(
                isLoading: widget.isLoading,
                onPressed: _onSignIn,
              ),
            ),
            const SizedBox(height: 24),
            const SignInAndDontHaveAnyAccount(),
            const SizedBox(height: 8),
            GestureDetector(
              onTap: () {
                //TODO: handle log in as a guest
              },
              child: Text(
                'Log in as a guest',
                style: TextStyle(
                  color: AppColors.primaryBlue,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 24),
            const OrDivider(),
            const SizedBox(height: 24),
            const LoginSocialRowButtons(),
          ],
        ),
      ),
    );
  }
}
