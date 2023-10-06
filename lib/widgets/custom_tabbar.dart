import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:doc_app/utils/app_colors.dart';
import 'package:doc_app/utils/size_utils.dart';
import 'package:doc_app/utils/app_textstyle.dart';
import 'package:doc_app/controllers/appoinment_controller.dart';

class CustomTabbar extends GetView {
  VoidCallback ontap;
  String text;
  double widthh;
  

  CustomTabbar({super.key, required this.ontap, required this.text, required this.widthh});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: AppoinmentController(),
      builder: (controller) {
        return Container(
          height: getVerticalSize(51),
          width: getHorizontalSize(187),
          decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(
            color: AppColors.normal,
            width: widthh,
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
    );
  }
}
