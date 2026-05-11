import 'package:ad_camp/core/constants/color_constants.dart';
import 'package:flutter/material.dart';

class UniversalAppbar extends StatelessWidget implements PreferredSizeWidget {
  const UniversalAppbar({super.key, this.title, this.leading});
  final String? title;
  final bool automaticallyImplyLeading = true;
  final Widget? leading;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      title: title != null ? Text(title!) : null,
      automaticallyImplyLeading: automaticallyImplyLeading,
      bottom: PreferredSize(
        preferredSize: Size(double.infinity, 2),
        child: Container(
          color: ColorConstants.balticSea,
          height: 2,
          width: double.infinity,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, kToolbarHeight);
}
