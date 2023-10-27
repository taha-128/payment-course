import 'package:checkout_course/core/utils/app_images.dart';
import 'package:checkout_course/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/app_svgs.dart';
import 'widgets/custom_button.dart';
import 'widgets/order_info_section.dart';
import 'widgets/payment_method_listview.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Cart", style: AppStyles.style25),
        centerTitle: true,
        leading: Center(
          child: SvgPicture.asset(
            AppSvgs.arrowIcon,
            height: 26,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 24),
            Expanded(
              child: Image.asset(AppImages.product),
            ),
            const SizedBox(height: 24),
            const OrderInfoSection(),
            CustomButton(
              title: 'Complete Payment',
              onTap: () {
                // context.push(const PaymentView());
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return const PaymentMethodsBottomSheet();
                  },
                );
              },
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 16),
          const PaymentsListView(),
          const SizedBox(height: 32),
          CustomButton(onTap: () {}, title: 'Continue'),
        ],
      ),
    );
  }
}
