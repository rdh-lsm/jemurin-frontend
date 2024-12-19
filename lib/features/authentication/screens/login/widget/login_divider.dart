import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:Jemuran_Otomatis/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_string.dart';

class UFormDivider extends StatelessWidget {
  const UFormDivider({
    super.key,
    required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Divider(color: dark ? UColors.darkGrey : UColors.grey, thickness: 0.5, indent: 60, endIndent: 5,)),
        Text(UTexts.orSignInWith.capitalize!, style: Theme.of(context).textTheme.labelMedium,),
        Flexible(child: Divider(color: dark ? UColors.darkGrey : UColors.grey, thickness: 0.5, indent: 5, endIndent: 60,)),
      ],
    );
  }
}