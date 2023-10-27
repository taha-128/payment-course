import 'package:checkout_course/Features/checkout/persentation/views/my_cart_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyCartView(),
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Inter',
      ),
    );
  }
}

//* Create paymentintent -> amount - currency
