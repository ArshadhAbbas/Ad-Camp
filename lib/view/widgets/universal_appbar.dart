import 'package:ad_camp/core/constants/color_constants.dart';
import 'package:flutter/material.dart';

class UniversalAppbar extends StatelessWidget implements PreferredSizeWidget {
  const UniversalAppbar({
    super.key,
    this.title,
    this.leading,
    this.bottom,
    this.automaticallyImplyLeading = true,
    this.actions,
  });
  final String? title;
  final bool automaticallyImplyLeading;
  final Widget? leading;
  final Widget? bottom;
  final List<Widget>? actions;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: bottom != null ? kToolbarHeight + 20 : kToolbarHeight,
      actions: actions,
      leading: leading,
      title: title != null ? Text(title!) : null,
      automaticallyImplyLeading: automaticallyImplyLeading,
      bottom: PreferredSize(
        preferredSize: Size(double.infinity, 2),
        child: Column(
          mainAxisAlignment: .center,
          crossAxisAlignment: .center,
          children: [
            ...[?bottom],
            Container(color: ColorConstants.balticSea, height: 2, width: double.infinity),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, kToolbarHeight + (bottom != null ? 20 : 0));
}
