import 'package:flutter/material.dart';

import '../../../../../core/utils/app_svgs.dart';
import 'payments_listview_item.dart';

class PaymentsListView extends StatefulWidget {
  const PaymentsListView({super.key});

  @override
  State<PaymentsListView> createState() => _PaymentsListViewState();
}

class _PaymentsListViewState extends State<PaymentsListView> {
  int activeIndex = 0;
  List assets = [
    AppSvgs.card,
    AppSvgs.paypal,
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 62,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                activeIndex = index;
              });
            },
            child: PaymentsListViewItem(
              asset: assets[index],
              isActive: activeIndex == index ? true : false,
            ),
          );
        },
      ),
    );
  }
}
