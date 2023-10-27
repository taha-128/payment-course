import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';
import 'card_info_item.dart';

class SuccessedInfo extends StatelessWidget {
  const SuccessedInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 60),
      child: Column(
        children: [
          OrderInfoItem(
            title: 'Date',
            value: '01/24/2023',
            secondStyle: AppStyles.style18b,
          ),
          SizedBox(height: 20),
          OrderInfoItem(
            title: 'Time',
            value: '10:15 AM',
            secondStyle: AppStyles.style18b,
          ),
          SizedBox(height: 20),
          OrderInfoItem(
            title: 'To',
            value: 'Sam Louis',
            secondStyle: AppStyles.style18b,
          ),
          Divider(),
          SizedBox(height: 25),
          OrderInfoItem(
            title: 'Total',
            value: '\$50.97',
            secondStyle: AppStyles.style24,
            firstStyle: AppStyles.style24,
          ),
        ],
      ),
    );
  }
}
