import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:doc_app/utils/size_utils.dart';
import 'package:doc_app/utils/app_images.dart';
import 'package:doc_app/routes/app_routes.dart';
import 'package:doc_app/utils/app_textstyle.dart';

class StartScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: Get.height * 0.09,
              left: Get.width * 0.14,
              right: Get.width * 0.10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome',
                  style: AppTextStyle.heading1,
                ),
                Text(
                  'Doctor Appoinment',
                  style: AppTextStyle.heading2,
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                Text(
                  'Tell the scheduler if you need a physical exam. Mention if you have a sore back, sore throat, etc.',
                  style: AppTextStyle.small,
                ),
                // SizedBox(
                //   height: Get.height * 0.02,
                // ),
              ],
            ),
          ),
          SizedBox(height: getVerticalSize(70),),
          Container(
            height: getVerticalSize(521),
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.startscreenimage),
                fit: BoxFit.fill,
              ),
            ),
            child: Padding(
              padding:  EdgeInsets.only(top: getVerticalSize(400)),
              child: TextButton(onPressed: (){
                Get.offNamed(AppRoute.signIn);
              },child: const Text('NEXT  >',style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),),
            ),
          ),
        ],
        
      ),
    );
  }
}
