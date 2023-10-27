import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';

class OrderInfoItem extends StatelessWidget {
  const OrderInfoItem({super.key, required this.title, required this.value, this.firstStyle, this.secondStyle});
  final String title, value;
  final TextStyle? firstStyle, secondStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: firstStyle ?? AppStyles.style18,
        ),
        Text(
          value,
          textAlign: TextAlign.center,
          style: secondStyle ?? AppStyles.style18,
        )
      ],
    );
  }
}
