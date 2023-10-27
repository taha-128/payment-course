import 'package:flutter/material.dart';

class WhiteCircle extends StatelessWidget {
  const WhiteCircle({super.key, required this.right});
  final bool right;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: right ? null : -20,
      right: right ? -20 : null,
      bottom: MediaQuery.of(context).size.height * .16,
      child: const CircleAvatar(
        backgroundColor: Colors.white,
      ),
    );
  }
}
