import 'package:esh7enly_app/feature/auth/presentation/view/auth_view_listener.dart';
import 'package:esh7enly_app/feature/auth/presentation/view_model/auth_cubit.dart';
import 'package:esh7enly_app/feature/auth/presentation/view_model/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/login_form_card.dart';
import 'widgets/login_header.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: listenToAuthState,
      builder: (context, state) {
        return Scaffold(
          backgroundColor: const Color(0xFFF8F9FA),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const LoginHeader(),
                Transform.translate(
                  offset: const Offset(0, -40),
                  child: LoginFormCard(isLoading: state is AuthLoading),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
