import 'package:ad_camp/core/constants/color_constants.dart';
import 'package:flutter/material.dart';

class AppSwitch extends StatelessWidget {
  const AppSwitch({super.key, required this.onChanged, required this.value});
  final Function(bool) onChanged;
  final bool value;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        height: 25,
        width: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: value ? ColorConstants.topaz : ColorConstants.cloud,
        ),
        child: AnimatedAlign(
          alignment: value ? Alignment.centerRight : Alignment.centerLeft,
          duration: Duration(milliseconds: 300),
          child: Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(shape: BoxShape.circle, color: ColorConstants.whiteSmoke),
          ),
        ),
      ),
    );
  }
}
