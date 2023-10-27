import 'dart:developer';

import 'package:checkout_course/Features/checkout/persentation/views/successed_view.dart';
import 'package:checkout_course/core/utils/extensions/app_navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/app_svgs.dart';
import 'widgets/custom_button.dart';
import 'widgets/custom_credit_card.dart';

class PaymentView extends StatefulWidget {
  const PaymentView({super.key});

  @override
  State<PaymentView> createState() => _PaymentViewState();
}

class _PaymentViewState extends State<PaymentView> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payment", style: AppStyles.style25),
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
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CustomCreditCard(
                formKey: formKey,
                autovalidateMode: autovalidateMode,
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding:
                      const EdgeInsets.only(bottom: 12, right: 16, left: 16),
                  child: CustomButton(
                    title: 'Pay',
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        // context.push(const SuccessedView());

                        log('pay');
                      } else {
                        context.push(const SuccessedView()); //! Remove
                        setState(() {
                          autovalidateMode = AutovalidateMode.always;
                        });
                      }
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
