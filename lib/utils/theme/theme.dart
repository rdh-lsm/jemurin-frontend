import 'package:flutter/material.dart';
import 'package:Jemuran_Otomatis/utils/theme/custom_themes/appbar_theme.dart';
import 'package:Jemuran_Otomatis/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:Jemuran_Otomatis/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:Jemuran_Otomatis/utils/theme/custom_themes/chip_theme.dart';
import 'package:Jemuran_Otomatis/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:Jemuran_Otomatis/utils/theme/custom_themes/text_field_theme.dart';
import 'package:Jemuran_Otomatis/utils/theme/custom_themes/text_theme.dart';
import 'package:Jemuran_Otomatis/utils/theme/custom_themes/elevated_button_theme.dart';

import '../constants/colors.dart';

class JoTheme{
  JoTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Raleway',
    disabledColor: UColors.grey,
    brightness: Brightness.light,
    primaryColor: UColors.primary,
    textTheme: UTextTheme.lightTextTheme,
    chipTheme: UChipTheme.lightChipTheme,
    scaffoldBackgroundColor: UColors.white,
    appBarTheme: UAppBarTheme.lightAppbarTheme,
    checkboxTheme: UCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: UBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: UElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: UOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: UTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Raleway',
    disabledColor: UColors.grey,
    brightness: Brightness.dark,
    primaryColor: UColors.primary,
    textTheme: UTextTheme.darkTextTheme,
    chipTheme: UChipTheme.darkChipTheme,
    scaffoldBackgroundColor: UColors.black,
    appBarTheme: UAppBarTheme.darkAppbarTheme,
    checkboxTheme: UCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: UBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: UElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: UOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: UTextFormFieldTheme.darkInputDecorationTheme,
  );
}
