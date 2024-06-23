import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nag/models/user_info_model.dart';
import 'package:nag/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.userInfo,
  });

  final UserInfoModel userInfo;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: const Color(0xffFAFAFA),
        elevation: 0,
        child: ListTile(
          leading: SvgPicture.asset(userInfo.image),
          title: Text(userInfo.title, style: AppStyles.semiBold16),
          subtitle: Text(userInfo.subtitle, style: AppStyles.regular12),
        ),
      ),
    );
  }
}
