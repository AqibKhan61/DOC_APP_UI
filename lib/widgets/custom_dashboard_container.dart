import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:doc_app/utils/app_colors.dart';
import 'package:doc_app/utils/size_utils.dart';
import 'package:doc_app/utils/app_textstyle.dart';


class CustomDashoardContainer extends GetView{
  Color color;
  String text;
  String iconImage;

  CustomDashoardContainer({super.key, required this.color, required this.iconImage, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(137),
      width: getHorizontalSize(155),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: getVerticalSize(50),
            width: getHorizontalSize(50),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: SvgPicture.asset(iconImage,fit: BoxFit.scaleDown,)
          ),
          SizedBox(height: getVerticalSize(15),),
          Text(text,style: AppTextStyle.heading2.copyWith(color:AppColors.white,fontWeight: FontWeight.normal),),
        ],
      )
    );

  }
}