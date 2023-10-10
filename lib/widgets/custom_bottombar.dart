import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:doc_app/utils/app_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:doc_app/utils/app_colors.dart';
import 'package:doc_app/utils/size_utils.dart';


class CustomBottomBar extends GetView {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(47),
      width: double.infinity,
      decoration: const BoxDecoration(color: AppColors.bottombarcolor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(AppIcons.homeIcon),
          SvgPicture.asset(AppIcons.phoneIcon),
          SvgPicture.asset(AppIcons.vectorIcon),
          SvgPicture.asset(AppIcons.dollarIcon),
          SvgPicture.asset(AppIcons.userIcon),
        ],
      ),
    );
  }
}
