import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:doc_app/utils/size_utils.dart';
import 'package:doc_app/utils/app_colors.dart';


class SignInButton extends GetView {
  VoidCallback onTap;
  String text;
  SignInButton({super.key , required this.onTap , required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: getHorizontalSize(297),
      decoration: BoxDecoration(
        color: AppColors.buttoncolor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
          onPressed: onTap,
          child:  Text(
            text,
            style: const TextStyle(
              fontFamily: 'OpenSans',
              color: AppColors.white,
              fontSize: 18,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
            ),
          )),
    );
  }
}
