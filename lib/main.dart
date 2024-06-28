import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'views/dashboard_view.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const ResponsiveDashboard(),
    ),
  );
}

class ResponsiveDashboard extends StatelessWidget {
  const ResponsiveDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(textTheme: GoogleFonts.montserratTextTheme()),
      home: const DashboardView(),
    );
  }
}
