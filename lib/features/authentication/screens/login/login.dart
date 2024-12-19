import 'package:flutter/material.dart';
import 'package:Jemuran_Otomatis/common/styles/spacing_styles.dart';
import 'package:Jemuran_Otomatis/features/authentication/screens/login/widget/login_form.dart';
import 'package:Jemuran_Otomatis/features/authentication/screens/login/widget/login_header.dart';
import 'package:Jemuran_Otomatis/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);

    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
              padding: USpacingStyle.paddingWithAnAppBarHeight,
              child: Column(
                children: [
                  /// Logo, Title, SubTitle
                  ULoginHeader(dark: dark,),
                  /// Form
                  const ULoginForm(),

                ],
              ),
            )
        )
    );
  }
}

class USocialButtons extends StatelessWidget {
  const USocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: UColors.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(onPressed: () {},
              icon: const Image(
                width: USizes.iconMd,
                height: USizes.iconMd,
                image: AssetImage(UImages.google),
              ),
          ),
        ),
        ///const SizedBox(width: USizes.spaceBtwItems),
        ///Container(
          ///decoration: BoxDecoration(border: Border.all(color: UColors.grey), borderRadius: BorderRadius.circular(100)),
          ///child: IconButton(onPressed: () {},
            ///icon: const Image(
              ///width: USizes.iconMd,
              ///height: USizes.iconMd,
              ///image: AssetImage(UImages.google),
            ///),
          ///),
        ///),
      ],
    );
  }
}