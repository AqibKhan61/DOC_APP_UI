import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:doc_app/utils/size_utils.dart';
import 'package:doc_app/utils/app_colors.dart';
import 'package:doc_app/utils/app_images.dart';
import 'package:doc_app/routes/app_routes.dart';
import 'package:doc_app/utils/app_textstyle.dart';
import 'package:doc_app/widgets/custom_textfield.dart';
import 'package:doc_app/widgets/custom_bottombarImage.dart';

class SignInScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: getVerticalSize(256),
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.signInimage),fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Get.width * 0.08, right: Get.width * 0.06),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(TextSpan(
                      text: 'Sign ',
                      style: AppTextStyle.heading1withPC
                          .copyWith(fontWeight: FontWeight.bold),
                      children: <InlineSpan>[
                        TextSpan(
                          text: 'In',
                          style: AppTextStyle.heading2
                              .copyWith(fontWeight: FontWeight.bold,color: const Color(0xff4b9d91)),
                        )
                      ])),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  Text(
                    'Please Enter Your Credentials to',
                    style: AppTextStyle.small,
                  ),
                  SizedBox(
                    height: Get.height * 0.07,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: Get.width * 0.001),
                    child: Column(
                      children: [
                        CustomTextField(
                            isTitle: false, text: 'Please Enter E-mail', obscuretext: false,),
                        SizedBox(
                          height: Get.height * 0.01,
                        ),
                        CustomTextField(isTitle: false, text: 'Password', obscuretext: true),
                        SizedBox(
                          height: Get.height * 0.01,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: Get.width * 0.48),
                          child: const Text('Forgot'),
                        ),
                        SizedBox(
                          height: Get.height * 0.08,
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                              padding: MaterialStatePropertyAll(
                                EdgeInsets.only(
                                  left: Get.width * 0.34,
                                  right: Get.width * 0.34,
                                  top: 10,
                                  bottom: 10,
                                ),
                              ),
                              backgroundColor: const MaterialStatePropertyAll(
                                AppColors.buttoncolor,
                              ),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10)))),
                          onPressed: () {
                            Get.toNamed(AppRoute.signUp);
                          },
                          child: Text(
                            'Sign In',
                            style: AppTextStyle.heading2
                                .copyWith(color: Colors.white),
                          ),
                        ),
                        SizedBox(height: Get.height * 0.01),
                        Text.rich(TextSpan(
                            text: 'Dont have An Account?  ',
                            style: AppTextStyle.small
                                .copyWith(color: Colors.black),
                            children: <InlineSpan>[
                              TextSpan(
                                text: 'Sign',
                                style: AppTextStyle.small,
                              )
                            ]))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomBarImage(),
    );
  }
}
