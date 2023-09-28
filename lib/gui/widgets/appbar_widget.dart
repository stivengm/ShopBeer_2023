import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopbeer/gui/app_style.dart';

class AppBarGeneralWidget extends StatelessWidget implements  PreferredSizeWidget {
  final String? titleAppbar;
  final bool? actions;
  final bool? centerTitle;
  final String? fontFamily;
  final double? fontSize;
  const AppBarGeneralWidget({ Key? key, this.titleAppbar, this.actions = false, this.centerTitle, this.fontFamily, this.fontSize }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: centerTitle ?? false,
      title: Text(titleAppbar ?? '', style: Theme.of(context).textTheme.headline6!.copyWith(fontFamily: fontFamily ?? 'Gordita', fontSize: fontSize, color: whiteColor) ),
      // leading: IconButton(
      //   icon: SvgPicture.asset('assets/icons/menu.svg', color: whiteColor,),
      //   onPressed: () => ZoomDrawer.of(context)!.toggle()
      // ),
      actions: (actions == true) ? [
        IconButton(
          icon: SvgPicture.asset('assets/icons/cart.svg'),
          onPressed: () => Navigator.pushNamed(context, 'notifications'),
        ),
        IconButton(
          icon: const Icon(
            Icons.notifications_none_rounded
          ),
          onPressed: () => Navigator.pushNamed(context, 'notifications'),
        ),
      ] : [],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

}