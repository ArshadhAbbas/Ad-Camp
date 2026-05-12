import 'package:ad_camp/core/constants/color_constants.dart';
import 'package:flutter/material.dart';

class TopazCard extends StatelessWidget {
  const TopazCard({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: ColorConstants.topaz.withValues(alpha: 0.2),
      ),
      child: child,
    );
  }
}
