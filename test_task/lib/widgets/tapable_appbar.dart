import 'package:flutter/material.dart';

class TapableAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Function onTap;
  final AppBar appBar;

  const TapableAppBar({Key key, this.onTap, this.appBar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: appBar,
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
}
