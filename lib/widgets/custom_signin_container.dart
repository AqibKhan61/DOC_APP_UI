import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:doc_app/utils/size_utils.dart';
import 'package:doc_app/utils/app_colors.dart';


class CustomSignupContainer extends GetView{
 String image;
 CustomSignupContainer({super.key, required this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: (60),
      width: (54),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: AppColors.white,
      ),
      child: SvgPicture.asset(image,fit: BoxFit.scaleDown),
    );
  }
}