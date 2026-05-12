
import 'package:ad_camp/core/constants/color_constants.dart';
import 'package:flutter/material.dart';

class AppSwitch extends StatefulWidget {
  const AppSwitch({super.key, this.onChanged});
  final Function(bool)? onChanged;

  @override
  State<AppSwitch> createState() => _AppSwitchState();
}

class _AppSwitchState extends State<AppSwitch> {
  bool isOn = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isOn = !isOn;
        });
        widget.onChanged?.call(isOn);
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        height: 25,
        width: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: isOn ? ColorConstants.topaz : ColorConstants.cloud,
        ),
        child: AnimatedAlign(
          alignment: isOn ? Alignment.centerRight : Alignment.centerLeft,
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
