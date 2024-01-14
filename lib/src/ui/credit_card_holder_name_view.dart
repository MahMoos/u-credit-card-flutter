import 'package:flutter/material.dart';
import 'package:u_credit_card/src/ui/credit_card_text.dart';

///
class CreditCardHolderNameView extends StatelessWidget {
  ///
  const CreditCardHolderNameView({
    super.key,
    required this.cardHolderFullName,
  });

  ///
  final String cardHolderFullName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220,
      child: CreditCardText(
        cardHolderFullName.toUpperCase(),
        letterSpacing: 2,
        fontSize: 14,
      ),
    );
  }
}
