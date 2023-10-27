import 'package:checkout_course/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

import 'barcode_section.dart';
import 'payment_info_method.dart';
import 'successed_info.dart';

class SuccessedBody extends StatelessWidget {
  const SuccessedBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 672,
      decoration: ShapeDecoration(
        color: const Color(0xFFededed),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 50 + 16),
        child: Column(
          children: [
            const Text(
              'Thank you!',
              style: AppStyles.style25,
            ),
            Text(
              'Your transaction was successful',
              textAlign: TextAlign.center,
              style: AppStyles.style20,
            ),
            const SizedBox(height: 42),
            const SuccessedInfo(),
            const SizedBox(height: 30),
            const PaymentInfoMethod(),
            const Spacer(),
            const BarcodeSection(),
            SizedBox(
              height: (MediaQuery.of(context).size.height * 0.16 + 20) / 2 - 40,
            )
          ],
        ),
      ),
    );
  }
}
