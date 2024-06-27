import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:nag/utils/app_styles.dart';
import 'package:nag/widgets/Desktop_Layout.dart';
import 'package:nag/widgets/adaptive_layout.dart';
import 'package:nag/widgets/custom_drawer.dart';
import 'package:nag/widgets/mobile_layout.dart';
import 'package:nag/widgets/tablet_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    log(MediaQuery.of(context).size.width.toString());
    return Scaffold(
      drawer: MediaQuery.of(context).size.width < 800
          ? const Drawer(child: CustomDrawer())
          : null,
      appBar: MediaQuery.of(context).size.width < 800
          ? AppBar(
              backgroundColor: const Color(0xff4EB7F2),
              elevation: 20,
              title: Text("Responsive Dashboard",
                  style: AppStyles.semiBold20.copyWith(color: Colors.white)),
            )
          : null,
      backgroundColor: const Color.fromARGB(255, 241, 241, 241),
      body: AdaptiveLayout(
        mobileCustomLayaout: (context) => const MobileLayout(),
        tabletCustomLayaout: (context) => const TabletLayout(),
        desktopCustomLayaout: (context) => const DesktopLayout(),
      ),
    );
  }
}
