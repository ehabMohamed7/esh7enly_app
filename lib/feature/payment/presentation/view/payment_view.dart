import 'package:esh7enly_app/core/router/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:esh7enly_app/core/theme/app_colors.dart';
import 'package:esh7enly_app/core/styles/app_text_styles.dart';
import 'package:go_router/go_router.dart';
import 'widgets/payment_view_body.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.textDark),
          onPressed: () => context.go(RoutesName.location),
        ),
        title: Text(
          'Payment',
          style: AppTextStyles.heading2.copyWith(color: AppColors.primaryBlue),
        ),
      ),
      body: const SafeArea(child: PaymentViewBody()),
    );
  }
}
