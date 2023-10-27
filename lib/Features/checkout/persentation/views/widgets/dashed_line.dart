import 'package:flutter/widgets.dart';

class DashedLine extends StatelessWidget {
  const DashedLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 26,
      right: 26,
      bottom: MediaQuery.of(context).size.height * 0.16 + 20,
      child: Row(
        children: List.generate(
          30,
          (index) => Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1),
              child: Container(
                height: 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFFB7B7B7),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
