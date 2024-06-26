import 'package:flutter/material.dart';
import 'package:nag/widgets/Desktop_Layout.dart';
import 'package:nag/widgets/adaptive_layout.dart';
import 'package:nag/widgets/mobile_layout.dart';
import 'package:nag/widgets/tablet_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 241, 241),
      body: AdaptiveLayout(
        mobileCustomLayaout: (context) => const MobileLayout(),
        tabletCustomLayaout: (context) => const TabletLayout(),
        desktopCustomLayaout: (context) => const DesktopLayout(),
      ),
    );
  }
}
