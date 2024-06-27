import 'package:flutter/material.dart';
import 'package:nag/utils/size_config.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobileCustomLayaout,
      required this.tabletCustomLayaout,
      required this.desktopCustomLayaout});
  final WidgetBuilder mobileCustomLayaout;
  final WidgetBuilder tabletCustomLayaout;
  final WidgetBuilder desktopCustomLayaout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < SizeConfig.tablet) {
          return mobileCustomLayaout(context);
        } else if (constraints.maxWidth < SizeConfig.desktop) {
          return tabletCustomLayaout(context);
        } else {
          return desktopCustomLayaout(context);
        }
      },
    );
  }
}
