import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:doc_app/utils/size_utils.dart';
import 'package:doc_app/utils/app_colors.dart';

class CustomButton extends GetView {
  final String text;
  VoidCallback ontap;

  CustomButton({super.key, required this.text, required this.ontap});

  @override
  Widget build(BuildContext context) {
    // return ElevatedButton(
    //   onPressed: ontap,
    //   style: const ButtonStyle(
    //     backgroundColor: MaterialStatePropertyAll(
    //       AppColors.primary2,
    //     ),
    //   ),
    //   child: Text(
    //     text,
    //     style: const TextStyle(color: AppColors.white),
    //   ),
    // );
    return Container(
      height: getVerticalSize(46),
      width: getHorizontalSize(149),
      decoration: BoxDecoration(
        color: const Color(0xff07a385),
        borderRadius: BorderRadius.circular(40),
      ),
      child: TextButton(
          onPressed: ontap,
          child: Text(
            text,
            style: const TextStyle(
              fontFamily: 'OpenSans',
              color: AppColors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
            ),
          )),
    );
  }
}
