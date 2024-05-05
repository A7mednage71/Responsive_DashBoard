import 'package:flutter/material.dart';
import 'package:nag/widgets/Desktop_Layout.dart';
import 'package:nag/widgets/adaptive_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: AdaptiveLayout(
        mobileCustomLayaout: (context) => const SizedBox(),
        tabletCustomLayaout: (context) => const SizedBox(),
        desktopCustomLayaout: (context) => const DesktopLayout(),
      ),
    );
  }
}
