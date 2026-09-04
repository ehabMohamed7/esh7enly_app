import 'package:esh7enly_app/core/utils/app_validators.dart';
import 'package:esh7enly_app/core/widgets/app_text_form_field.dart';
import 'package:esh7enly_app/feature/auth/presentation/view_model/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../login/presentation/view/widgets/login_social_row_buttons.dart';
import '../../../../login/presentation/view/widgets/or_divider.dart';
import 'already_have_account.dart';
import 'create_account_button.dart';
import 'terms_checkbox.dart';

class RegisterFormCard extends StatefulWidget {
  const RegisterFormCard({super.key, this.isLoading = false});

  final bool isLoading;

  @override
  State<RegisterFormCard> createState() => _RegisterFormCardState();
}

class _RegisterFormCardState extends State<RegisterFormCard> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool _agreedToTerms = false;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void _onCreateAccount() {
    if (!(_formKey.currentState?.validate() ?? false)) return;
    if (!_agreedToTerms) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please agree to the Terms & Privacy Policy')),
      );
      return;
    }
    context.read<AuthCubit>().register(
      email: _emailController.text,
      password: _passwordController.text,
      fullName: _nameController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'CREATE YOUR\nACCOUNT',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w900,
                color: Color(0xFF0D1B2A),
                letterSpacing: 1.2,
                height: 1.2,
              ),
            ),
            const SizedBox(height: 24),
            AppTextFormField(
              controller: _nameController,
              hintText: 'Full name',
              prefixIcon: Icons.person_outline,
              textInputAction: TextInputAction.next,
              validator: (value) =>
                  AppValidators.required(value, field: 'Full name'),
            ),
            const SizedBox(height: 16),
            AppTextFormField(
              controller: _emailController,
              hintText: 'EmailAddress',
              prefixIcon: Icons.email_outlined,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              validator: AppValidators.email,
            ),
            const SizedBox(height: 16),
            AppTextFormField(
              controller: _phoneController,
              hintText: 'Phone Number',
              prefixIcon: Icons.phone_outlined,
              keyboardType: TextInputType.phone,
              textInputAction: TextInputAction.next,
              validator: AppValidators.phone,
            ),
            const SizedBox(height: 16),
            AppTextFormField(
              controller: _passwordController,
              hintText: 'Password',
              prefixIcon: Icons.lock_outline,
              isPassword: true,
              textInputAction: TextInputAction.next,
              validator: AppValidators.password,
            ),
            const SizedBox(height: 16),
            AppTextFormField(
              controller: _confirmPasswordController,
              hintText: 'Confirm Password',
              prefixIcon: Icons.lock_outline,
              isPassword: true,
              textInputAction: TextInputAction.done,
              validator: (value) => AppValidators.confirmPassword(
                value,
                _passwordController.text,
              ),
            ),
            const SizedBox(height: 16),
            TermsCheckbox(
              value: _agreedToTerms,
              onChanged: (value) => setState(() => _agreedToTerms = value),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: CreateAccountButton(
                isLoading: widget.isLoading,
                onPressed: _onCreateAccount,
              ),
            ),
            const SizedBox(height: 32),
            const OrDivider(text: 'OR CONTINUE WITH'),
            const SizedBox(height: 24),
            const LoginSocialRowButtons(),
            const SizedBox(height: 24),
            const AlreadyHaveAccount(),
          ],
        ),
      ),
    );
  }
}
