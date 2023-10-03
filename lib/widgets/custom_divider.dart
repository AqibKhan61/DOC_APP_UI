import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:doc_app/utils/app_colors.dart';



class CustomDivider extends GetView{

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 60,
      child: Divider(
        color: AppColors.black,
      ),
    );
  }
}