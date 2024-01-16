import 'package:flutter/material.dart';
import 'package:u_credit_card/src/constants/assets.dart';
import 'package:u_credit_card/src/ui/credit_card_asset_image.dart';

///
class CreditCardChipNfcView extends StatelessWidget {
  ///
  const CreditCardChipNfcView({
    super.key,
    required this.doesSupportNfc,
    required this.placeNfcIconAtTheEnd,
    this.chip = Assets.chip,
  });

  ///
  final String chip;

  ///
  final bool doesSupportNfc;

  ///
  final bool placeNfcIconAtTheEnd;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...[
          const SizedBox(width: 37),
          CreditCardAssetImage(
            assetPath: chip,
            fit: BoxFit.fill,
            width: 44.88,
          ),
        ],
        if (placeNfcIconAtTheEnd) const Spacer(),
        if (doesSupportNfc) ...[
          const SizedBox(width: 12),
          const SizedBox(
            height: 18,
            width: 25,
            child: CreditCardAssetImage(
              assetPath: Assets.nfc,
            ),
          ),
          const SizedBox(width: 37),
        ],
      ],
    );
  }
}
