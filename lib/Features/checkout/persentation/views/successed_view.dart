import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/app_svgs.dart';
import 'widgets/dashed_line.dart';
import 'widgets/successed_background_widget.dart';
import 'widgets/successed_check_box.dart';
import 'widgets/white_circle_widget.dart';

class SuccessedView extends StatelessWidget {
  const SuccessedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Center(
          child: SvgPicture.asset(
            AppSvgs.arrowIcon,
            height: 26,
          ),
        ),
      ),
      body: const Center(
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            SuccessedBody(),
            SuccessedCheckBox(),
            WhiteCircle(right: true),
            WhiteCircle(right: false),
            DashedLine(),
          ],
        ),
      ),
    );
  }
}
