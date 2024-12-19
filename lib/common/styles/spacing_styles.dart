import 'package:flutter/material.dart';

import '../../utils/constants/sizes.dart';

class USpacingStyle {
  static const EdgeInsetsGeometry paddingWithAnAppBarHeight = EdgeInsets.only(
    top: USizes.appBarHeight,
    left: USizes.defaultSpace,
    bottom: USizes.defaultSpace,
    right: USizes.defaultSpace,
  );
}