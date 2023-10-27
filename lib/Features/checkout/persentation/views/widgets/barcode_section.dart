import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_barcodes/barcodes.dart';

class BarcodeSection extends StatelessWidget {
  const BarcodeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 100,
            child: SfBarcodeGenerator(
              value: 'tahahassan.tech',
              symbology: QRCode(),
              showValue: true,
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 113,
            height: 58,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1.50, color: Color(0xFF34A853)),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: const Text(
              'PAID',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF34A853),
                fontSize: 24,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
