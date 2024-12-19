import 'package:flutter/material.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_string.dart';

class ULoginHeader extends StatelessWidget {
  const ULoginHeader({
    super.key, required this.dark,
    // required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(dark ? UImages.lightAppLogo : UImages.darkAppLogo),
        ),
        Text(UTexts.loginTitle, style: Theme
            .of(context)
            .textTheme
            .headlineMedium),
        const SizedBox(height: USizes.sm),
        Text(UTexts.loginSubTitle, style: Theme
            .of(context)
            .textTheme
            .bodyMedium),
      ],
    );
  }
}