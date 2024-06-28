import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:nag/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle regular16 = TextStyle(
    color: const Color(0xff064061),
    fontSize: getResponsivefontSize(fontsize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );

  static TextStyle regular14 = TextStyle(
    color: const Color(0xffAAAAAA),
    fontSize: getResponsivefontSize(fontsize: 14),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );

  static TextStyle regular12 = TextStyle(
    color: const Color(0xffAAAAAA),
    fontSize: getResponsivefontSize(fontsize: 12),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );

  static TextStyle medium16 = TextStyle(
    color: const Color(0xff064061),
    fontSize: getResponsivefontSize(fontsize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );

  static TextStyle medium20 = TextStyle(
    color: const Color(0xffFFFFFF),
    fontSize: getResponsivefontSize(fontsize: 20),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );

  static TextStyle semiBold16 = TextStyle(
    color: const Color(0xff064061),
    fontSize: getResponsivefontSize(fontsize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );

  static TextStyle semiBold18 = TextStyle(
    color: const Color(0xff4EB7F2),
    fontSize: getResponsivefontSize(fontsize: 18),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );

  static TextStyle semiBold20 = TextStyle(
    color: const Color(0xff064061),
    fontSize: getResponsivefontSize(fontsize: 20),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );

  static TextStyle semiBold24 = TextStyle(
    color: const Color(0xff4EB7F2),
    fontSize: getResponsivefontSize(fontsize: 24),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );

  static TextStyle bold16 = TextStyle(
    color: const Color(0xff4EB7F2),
    fontSize: getResponsivefontSize(fontsize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w700,
  );
}

double getResponsivefontSize({
  required double fontsize,
}) {
  double scalefactor = getScaleFactor();
  double responsiveSize = scalefactor * fontsize;

  double lower = fontsize * 0.8;
  double upper = fontsize * 1.2;

  return responsiveSize.clamp(lower, upper);
}

double getScaleFactor() {
  var dispatcher = PlatformDispatcher.instance;
  var physicalwidth = dispatcher.views.first.physicalSize.width;
  var devicePixelRatio = dispatcher.views.first.devicePixelRatio;

  double width = physicalwidth / devicePixelRatio;

  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1900;
  }
}


// double getResponsivefontSize({
//   required BuildContext context,
//   required double fontsize,
// }) {
//   double scalefactor = getScaleFactor(context: context);

//   double responsiveSize = scalefactor * fontsize;

//   double lower = fontsize * 0.8;
//   double upper = fontsize * 1.2;

//   return responsiveSize.clamp(lower, upper);
// }

// double getScaleFactor({required BuildContext context}) {
//   double width = MediaQuery.sizeOf(context).width;

//   if (width < 600) {
//     return width / 400;
//   } else if (width < 900) {
//     return width / 700;
//   } else {
//     return width / 1000;
//   }
// }
