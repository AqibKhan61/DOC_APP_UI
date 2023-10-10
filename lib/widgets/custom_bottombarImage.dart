import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:doc_app/utils/size_utils.dart';
import 'package:doc_app/utils/app_images.dart';

class CustomBottomBarImage extends GetView {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(72),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AppImages.bottomBarimage), fit: BoxFit.cover),
      ),
    );
  }
}
