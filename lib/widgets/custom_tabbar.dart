import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:doc_app/utils/app_colors.dart';
import 'package:doc_app/utils/size_utils.dart';
import 'package:doc_app/utils/app_textstyle.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomTabbar extends GetView {
  VoidCallback ontap;
  String text;

  CustomTabbar({super.key, required this.ontap, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(51),
      width: getHorizontalSize(187),
      decoration: const BoxDecoration(
          border: Border(
              top: BorderSide(
        color: AppColors.normal,
        width: 0.5,
      ))),
      child: InkWell(
          onTap: ontap,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: AppTextStyle.normalText.copyWith(height: 3),
              ),
            ],
          )),
    );
  }
}
