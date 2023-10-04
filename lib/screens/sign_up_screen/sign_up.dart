import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:doc_app/utils/app_icons.dart';
import 'package:doc_app/utils/size_utils.dart';
import 'package:doc_app/utils/app_colors.dart';
import 'package:doc_app/utils/app_images.dart';
import 'package:doc_app/routes/app_routes.dart';
import 'package:doc_app/utils/app_textstyle.dart';
import 'package:doc_app/widgets/custom_divider.dart';
import 'package:doc_app/widgets/custom_textfield.dart';
import 'package:doc_app/widgets/custom_bottombarImage.dart';
import 'package:doc_app/widgets/custom_signin_container.dart';
import 'package:doc_app/controllers/dropdown_controller.dart';

class SignUpScreen extends GetView<DropDownController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: DropDownController(),
        builder: (controller) {
          return Scaffold(
            
            body: SizedBox(
              height: getVerticalSize(820),
              width: getHorizontalSize(375),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: Get.height * 0.35,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppImages.signInimage),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: getVerticalSize(80),
                            left: getHorizontalSize(28)),
                        child: Text(
                          'Welcome',
                          style: AppTextStyle.heading1.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
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
                                  text: 'Up',
                                  style: AppTextStyle.heading2.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xff4b9d91)),
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
                            height: Get.height * 0.03,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: Get.width * 0.001),
                            child: Column(
                              children: [
                                CustomTextField(
                                  height: 40.0,
                                  text: 'Enter Full Name',
                                  obscuretext: false,
                                ),
                                SizedBox(
                                  height: Get.height * 0.01,
                                ),
                                CustomTextField(
                                    height: 40.0,
                                    text: 'Phone Number',
                                    obscuretext: false),
                                SizedBox(
                                  height: Get.height * 0.01,
                                ),
                                SizedBox(
                                  width: 300,
                                  height: 40.0,
                                  child: DropdownButtonFormField(
                                      decoration: InputDecoration(
                                        contentPadding: const EdgeInsets.only(
                                          left: 15,
                                          right: 10,
                                        ),
                                        suffixIconColor: AppColors.primary2,
                                        filled: true,
                                        fillColor: const Color(0xfff3f3f3),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(5),
                                          borderSide: BorderSide.none,
                                        ),
                                      ),
                                      hint: Text(
                                        'Gender',
                                        style: AppTextStyle.small,
                                      ),
                                      onChanged: (newValue) {
                                        controller.onChange(newValue);
                                      },
                                      items: itemlist.map((value) {
                                        return DropdownMenuItem(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList()),
                                ),
                                SizedBox(
                                  height: Get.height * 0.01,
                                ),
                                CustomTextField(
                                    height: 40.0,
                                    text: 'AGE',
                                    obscuretext: false),
                                SizedBox(
                                  height: Get.height * 0.03,
                                ),
                                ElevatedButton(
                                  style: ButtonStyle(
                                      padding: MaterialStatePropertyAll(
                                        EdgeInsets.only(
                                          left: Get.width * 0.34,
                                          right: Get.width * 0.32,
                                          top: 10,
                                          bottom: 10,
                                        ),
                                      ),
                                      backgroundColor:
                                          const MaterialStatePropertyAll(
                                        AppColors.buttoncolor,
                                      ),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)))),
                                  onPressed: () {
                                    Get.toNamed(AppRoute.dashboard);
                                  },
                                  child: Text(
                                    'Sign Up',
                                    style: AppTextStyle.heading2
                                        .copyWith(color: Colors.white),
                                  ),
                                ),
                                SizedBox(height: Get.height * 0.01),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(35)),
                                  child: Row(
                                    children: [
                                      CustomDivider(),
                                      SizedBox(
                                        width: getHorizontalSize(10),
                                      ),
                                      Text(
                                        'Or Sign in with',
                                        style: AppTextStyle.small,
                                      ),
                                      SizedBox(
                                        width: getHorizontalSize(10),
                                      ),
                                      CustomDivider(),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:  EdgeInsets.only(left: getHorizontalSize(40)),
                                  child: Row(
                                    children: [
                                      CustomSignupContainer(
                                          image: AppIcons.facebookIcon),
                                      SizedBox(
                                        width: getHorizontalSize(25),
                                      ),
                                      CustomSignupContainer(
                                          image: AppIcons.googleIcon),
                                      SizedBox(
                                        width: getHorizontalSize(30),
                                      ),
                                      CustomSignupContainer(
                                          image: AppIcons.appleIcon),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: CustomBottomBarImage(),
          );
        });
  }
}

List<String> itemlist = ['Male', 'Female'];
