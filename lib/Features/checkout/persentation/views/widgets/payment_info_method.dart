
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/app_svgs.dart';

class PaymentInfoMethod extends StatelessWidget {
  const PaymentInfoMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 305,
      height: 73,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Row(
        children: [
          const SizedBox(width: 18),
          SvgPicture.asset(AppSvgs.mastercard),
          const SizedBox(width: 18),
          Text.rich(
            TextSpan(
              children: [
                const TextSpan(
                  text: 'Credit Card\n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                TextSpan(
                  text: 'Mastercard **78 ',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.699999988079071),
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
