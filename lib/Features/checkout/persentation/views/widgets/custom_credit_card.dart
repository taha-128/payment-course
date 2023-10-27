import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CustomCreditCard extends StatefulWidget {
  const CustomCreditCard(
      {super.key, required this.formKey, required this.autovalidateMode});
  final GlobalKey<FormState> formKey;
  final AutovalidateMode autovalidateMode;
  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  String cardNumber = '', expiryDate = '', cardHolderName = '', cvvCode = '';
  bool showBackView = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          showBackView: showBackView,
          isHolderNameVisible: true,
          onCreditCardWidgetChange: (value) {},
        ),
        CreditCardForm(
          cardHolderValidator: (p0) {
            if (p0!.isEmpty) {
              return 'Please enter your name';
            }
            return null;
          },
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          autovalidateMode: widget.autovalidateMode,
          cvvCode: cvvCode,
          onCreditCardModelChange: (value) {
            setState(() {
              cardNumber = value.cardNumber;
              expiryDate = value.expiryDate;
              cardHolderName = value.cardHolderName;
              cvvCode = value.cvvCode;
              showBackView = value.isCvvFocused;
            });
          },
          formKey: widget.formKey,
        ),
      ],
    );
  }
}
