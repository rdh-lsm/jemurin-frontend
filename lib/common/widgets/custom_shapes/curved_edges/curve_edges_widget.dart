import 'package:flutter/material.dart';

import 'curved_edges.dart';

class UCurveEdgeWidget extends StatelessWidget {
  const UCurveEdgeWidget({
    super.key, this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: UCustomCurvedEdges(),
      child: child,
    );
  }
}
