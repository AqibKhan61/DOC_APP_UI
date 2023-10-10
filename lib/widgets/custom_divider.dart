import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:doc_app/utils/app_colors.dart';



class CustomDivider extends GetView{

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 56,
      height: 1,
      child: Divider(
        color: Color(0xff07a385),
      ),
    );
  }
}