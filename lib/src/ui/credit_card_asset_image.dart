import 'package:flutter/material.dart';
import 'package:u_credit_card/src/constants/ui_constants.dart';

///
class CreditCardAssetImage extends StatelessWidget {
  ///
  const CreditCardAssetImage({
    super.key,
    required this.assetPath,
    this.fit = BoxFit.contain,
    this.width,
    this.height,
  });

  ///
  final String assetPath;
  ///
  final BoxFit fit;
  ///
  final double? width;
  ///
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      assetPath,
      package: UiConstants.packageName,
      fit: fit,
      width: width,
      height: height,
    );
  }
}
