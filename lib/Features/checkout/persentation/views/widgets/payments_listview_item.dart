import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentsListViewItem extends StatefulWidget {
  const PaymentsListViewItem(
      {super.key, required this.asset, this.isActive = false});
  final String asset;
  final bool isActive;

  @override
  State<PaymentsListViewItem> createState() => _PaymentsListViewItemState();
}

class _PaymentsListViewItemState extends State<PaymentsListViewItem> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      child: Container(
        width: 103,
        height: 62,
        margin: const EdgeInsets.only(right: 16),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1.50,
              color: widget.isActive ? const Color(0xFF34A853) : Colors.black45,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          shadows: [
            BoxShadow(
              color: widget.isActive
                  ? const Color.fromARGB(156, 52, 168, 83)
                  : Colors.white,
              blurRadius: 4,
              offset: const Offset(0, 0),
              spreadRadius: 0,
            )
          ],
        ),
        child: Center(
          child: SvgPicture.asset(widget.asset),
        ),
      ),
    );
  }
}
