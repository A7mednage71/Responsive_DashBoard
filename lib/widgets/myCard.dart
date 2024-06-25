import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nag/utils/app_images.dart';
import 'package:nag/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xff4EB7F2),
          image: DecorationImage(image: AssetImage(Assets.imageCardBackImage)),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.only(left: 31, right: 42),
              title: Text(
                "Name card",
                style: AppStyles.regular16
                    .copyWith(color: const Color(0xffFFFFFF)),
              ),
              subtitle: const Text(
                "Syah Bandi",
                style: AppStyles.medium20,
              ),
              trailing: SvgPicture.asset(Assets.imageGallery),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 24, bottom: 27),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "0918 8124 0042 8129",
                    style: AppStyles.semiBold24
                        .copyWith(color: const Color(0xffFFFFFF)),
                  ),
                  Text(
                    "12/20 - 124",
                    style: AppStyles.regular16
                        .copyWith(color: const Color(0xffFFFFFF)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
