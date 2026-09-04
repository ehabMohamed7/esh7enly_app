import 'package:flutter/material.dart';
import 'package:esh7enly_app/core/theme/app_colors.dart';
import 'package:esh7enly_app/core/styles/app_text_styles.dart';
import 'payment_method_card.dart';
import 'order_summary_card.dart';
import 'pay_securely_button.dart';
import 'visa_icon_widget.dart';
import 'apple_pay_icon_widget.dart';

class PaymentViewBody extends StatefulWidget {
  const PaymentViewBody({super.key});

  @override
  State<PaymentViewBody> createState() => _PaymentViewBodyState();
}

class _PaymentViewBodyState extends State<PaymentViewBody> {
  String _selectedMethod = 'visa';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 16.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Payment method',
                  style: AppTextStyles.subtitle1.copyWith(
                    color: AppColors.primaryBlue,
                  ),
                ),
                const SizedBox(height: 16),
                PaymentMethodCard(
                  value: 'visa',
                  groupValue: _selectedMethod,
                  title: '**** **** **** 4242',
                  subtitle: 'Expires 12/26',
                  leading: const VisaIconWidget(),
                  onChanged: (val) {
                    setState(() {
                      _selectedMethod = val!;
                    });
                  },
                ),
                const SizedBox(height: 16),
                PaymentMethodCard(
                  value: 'apple_pay',
                  groupValue: _selectedMethod,
                  title: 'Apple Pay',
                  leading: const ApplePayIconWidget(),
                  onChanged: (val) {
                    setState(() {
                      _selectedMethod = val!;
                    });
                  },
                ),
                const SizedBox(height: 16),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add,
                    color: AppColors.primaryBlue,
                    size: 20,
                  ),
                  label: Text(
                    'Add new card',
                    style: AppTextStyles.bodyLarge.copyWith(
                      color: AppColors.primaryBlue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    alignment: Alignment.centerLeft,
                  ),
                ),
                const SizedBox(height: 32),
                Text(
                  'Order summary',
                  style: AppTextStyles.subtitle1.copyWith(
                    color: AppColors.primaryBlue,
                  ),
                ),
                const SizedBox(height: 16),
                const OrderSummaryCard(),
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(24.0),
          child: PaySecurelyBottomSection(),
        ),
      ],
    );
  }
}
