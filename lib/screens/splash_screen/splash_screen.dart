import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:doc_app/utils/size_utils.dart';
import 'package:doc_app/utils/app_images.dart';
import 'package:doc_app/controllers/splash_controller.dart';


class SplashScreen extends GetView<SplashController>{
  const SplashScreen({super.key});

  
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: SplashController(),
      builder: (controller) {
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(AppImages.splash1image),fit: BoxFit.cover,),
          ),
          child: Padding(
            padding:  getPadding(top: getVerticalSize(24),left: getHorizontalSize(56),right: getHorizontalSize(56),),
            child: Column(
              children: [
                SizedBox(
                  height: getVerticalSize(211),
                  width: getHorizontalSize(262),
                  child: Image(image: AssetImage( AppImages.splash1_2image),fit: BoxFit.cover,)),
              ],
            ),
          ),
        );
      }
    );
  }
}
