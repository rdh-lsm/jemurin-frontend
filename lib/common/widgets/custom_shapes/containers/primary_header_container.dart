import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/curve_edges_widget.dart';
import 'circular_container.dart';

class UPrimaryHeaderContainer extends StatelessWidget {
  const UPrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return UCurveEdgeWidget(
      child: Container(
        color: UColors.primary,
        padding: const EdgeInsets.only(bottom : 0),
          child: Stack(
            children: [
              /// -- Background Custom Shapes
              Positioned(top : -150, right : -250, child: UCircularContainer(backgroundColor: UColors.tertiary.withOpacity(0.4),)),
              Positioned(top : 100, right : -300, child: UCircularContainer(backgroundColor: UColors.secondary.withOpacity(0.3),)),
              Positioned(top : -50, right : -100, child: UCircularContainer(backgroundColor: UColors.quaternary.withOpacity(0.3),)),
              child,
            ],
          ),
        ),
    );
  }
}
