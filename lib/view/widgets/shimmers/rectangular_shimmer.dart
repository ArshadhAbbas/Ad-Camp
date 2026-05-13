import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class RectangularShimmer extends StatelessWidget {
  const RectangularShimmer({super.key, required this.height, required this.width});
  final double height, width;
  @override
  Widget build(BuildContext context) {
    return Shimmer(
      duration: Duration(seconds: 3),
      interval: Duration(seconds: 5),
      colorOpacity: 0,
      enabled: true,
      direction: ShimmerDirection.fromLTRB(),
      child: SizedBox(height: height, width: width),
    );
  }
}
