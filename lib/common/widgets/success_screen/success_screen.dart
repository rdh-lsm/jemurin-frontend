import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:Jemuran_Otomatis/common/styles/spacing_styles.dart';
import 'package:Jemuran_Otomatis/features/authentication/screens/login/login.dart';
import 'package:Jemuran_Otomatis/utils/helpers/helper_functions.dart';

import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_string.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: USpacingStyle.paddingWithAnAppBarHeight * 2,
          child: Column(
            children: [
              /// Image
              Image(
                image: const AssetImage(UImages.staticSuccessIllustration),
                width: UHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: USizes.spaceBtwSections,),
              /// Title & SubTitle
              Text(UTexts.yourAccountCreatedTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              const SizedBox(height: USizes.spaceBtwItems,),
              Text(UTexts.yourAccountCreatedSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
              const SizedBox(height: USizes.spaceBtwSections,),

              /// Buttons
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => const LoginScreen()), child: const Text(UTexts.tContinue)),),
            ],
          ),
        ),
      ),
    );
  }
}
