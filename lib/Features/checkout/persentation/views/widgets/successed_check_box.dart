import 'package:flutter/material.dart';

class SuccessedCheckBox extends StatelessWidget {
  const SuccessedCheckBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      top: -50,
      child: CircleAvatar(
        radius: 50,
        backgroundColor: Color(0xFFededed),
        child: CircleAvatar(
          radius: 40,
          backgroundColor: Colors.green,
          child: Icon(
            Icons.check_sharp,
            color: Colors.white,
            size: 50,
          ),
        ),
      ),
    );
  }
}
