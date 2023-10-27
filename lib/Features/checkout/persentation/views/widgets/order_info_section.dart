import 'package:checkout_course/Features/checkout/persentation/views/widgets/custom_divider.dart';
import 'package:checkout_course/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

import 'card_info_item.dart';

class OrderInfoSection extends StatelessWidget {
  const OrderInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        OrderInfoItem(title: 'Order Subtotal', value: '\$42.97'),
        SizedBox(height: 5),
        OrderInfoItem(title: 'Discount', value: '\$0'),
        SizedBox(height: 5),
        OrderInfoItem(title: 'Shipping', value: '\$8'),
        CustomDivider(),
        SizedBox(height: 18),
        OrderInfoItem(
          title: 'Total',
          value: '\$50.97',
          secondStyle: AppStyles.style24,
          firstStyle: AppStyles.style24,
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
