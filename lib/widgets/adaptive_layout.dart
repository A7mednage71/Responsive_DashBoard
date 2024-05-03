import 'package:flutter/material.dart';

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
        if (constraints.maxWidth < 600) {
          return mobileCustomLayaout(context);
        } else if (constraints.maxWidth < 900) {
          return tabletCustomLayaout(context);
        } else {
          return desktopCustomLayaout(context);
        }
      },
    );
  }
}
