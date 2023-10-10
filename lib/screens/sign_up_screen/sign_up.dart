import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:doc_app/utils/constant.dart';
import 'package:doc_app/utils/app_icons.dart';
import 'package:doc_app/utils/size_utils.dart';
import 'package:doc_app/utils/app_colors.dart';
import 'package:doc_app/utils/app_images.dart';
import 'package:doc_app/routes/app_routes.dart';
import 'package:doc_app/utils/app_textstyle.dart';
import 'package:doc_app/widgets/custom_divider.dart';
import 'package:doc_app/widgets/custom_textfield.dart';
import 'package:doc_app/widgets/Custom_signIn_Button.dart';
import 'package:doc_app/widgets/custom_bottombarImage.dart';
import 'package:doc_app/widgets/custom_signin_container.dart';
import 'package:doc_app/controllers/dropdown_controller.dart';

class SignUpScreen extends GetView<DropDownController> {
  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return GetBuilder(
        init: DropDownController(),
        builder: (controller) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: getVerticalSize(280),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AppImages.signInimage),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: getVerticalSize(62),
                          left: getHorizontalSize(26)),
                      child: const Text('Welcome',
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            color: AppColors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal,
                          )),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: getHorizontalSize(34),
                        right: getHorizontalSize(39)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text.rich(TextSpan(
                            text: 'Sign ',
                            style: TextStyle(
                              fontFamily: 'OpenSans',
                              color: Color(0xff59615d),
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                            ),
                            children: <InlineSpan>[
                              TextSpan(
                                text: 'Up',
                                style: TextStyle(
                                  fontFamily: 'OpenSans',
                                  color: Color(0xff4b9d91),
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                ),
                              )
                            ])),
                        SizedBox(
                          height: kSize.height < 820
                              ? getVerticalSize(0)
                              : kSize.height == 851
                                  ? getVerticalSize(0)
                                  : getVerticalSize(12),
                        ),
                        Text(
                          'Please Enter Your Credentials to',
                          style: AppTextStyle.small,
                        ),
                        SizedBox(
                          height: kSize.height < 820
                              ? getVerticalSize(15)
                              : kSize.height == 844
                                  ? getVerticalSize(13)
                                  : getVerticalSize(26),
                        ),
                        CustomTextField(
                          isTitle: false,
                          height: getVerticalSize(40),
                          text: 'Enter Full Name',
                          obscuretext: false,
                        ),
                        SizedBox(
                          height: getVerticalSize(12),
                        ),
                        CustomTextField(
                            isTitle: false,
                            height: getVerticalSize(40),
                            text: 'Phone Number',
                            obscuretext: false),
                        SizedBox(
                          height: getVerticalSize(12),
                        ),
                        SizedBox(
                          width: kSize.width == 414
                              ? getHorizontalSize(270)
                              : kSize.width == 390
                                  ? getHorizontalSize(290)
                                  : kSize.width == 393
                                      ? getHorizontalSize(286)
                                      : kSize.width == 412
                                          ? getHorizontalSize(275)
                                          : getHorizontalSize(300),
                          height: getVerticalSize(40),
                          child: DropdownButtonFormField(
                              decoration: InputDecoration(
                                contentPadding: getPadding(
                                  left: getHorizontalSize(15),
                                  right: getHorizontalSize(10),
                                ),
                                suffixIconColor: AppColors.primary2,
                                filled: true,
                                fillColor: const Color(0xfff3f3f3),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                              hint: const Text(
                                'Gender',
                                style: TextStyle(
                                  fontFamily: 'OpenSans',
                                  color: Color(0xff8a8a8a),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal,
                                ),
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
                          height: getVerticalSize(12),
                        ),
                        CustomTextField(
                            isTitle: false,
                            height: getVerticalSize(40),
                            text: 'AGE',
                            obscuretext: false),
                        SizedBox(
                          height: kSize.height == 667
                              ? getVerticalSize(12)
                              : kSize.height == 896
                                  ? getVerticalSize(15)
                                  : kSize.height == 740
                                      ? getVerticalSize(10)
                                      : kSize.height < 820 ? getVerticalSize(20)
                                      : getVerticalSize(30),
                        ),
                        // ElevatedButton(
                        //   style: ButtonStyle(
                        //       padding: MaterialStatePropertyAll(
                        //         getPadding(
                        //           left: getHorizontalSize(119),
                        //           right: getHorizontalSize(119),
                        //           top: getVerticalSize(12),
                        //           bottom: getVerticalSize(12),
                        //         ),
                        //       ),
                        //       backgroundColor: const MaterialStatePropertyAll(
                        //         AppColors.buttoncolor,
                        //       ),
                        //       shape: MaterialStateProperty.all<
                        //               RoundedRectangleBorder>(
                        //           RoundedRectangleBorder(
                        //               borderRadius:
                        //                   BorderRadius.circular(10)))),
                        //   onPressed: () {
                        //     Get.toNamed(AppRoute.dashboard);
                        //   },
                        //   child: Text(
                        //     'Sign Up',
                        //     style: AppTextStyle.heading2
                        //         .copyWith(color: Colors.white),
                        //   ),
                        // ),
                        SignInButton(
                            onTap: () {
                              Get.toNamed(AppRoute.dashboard);
                            },
                            text: 'Sign Up'),
                        SizedBox(
                            height: kSize.height < 820
                                ? getVerticalSize(15)
                                : kSize.height == 667
                                    ? getVerticalSize(3)
                                    : kSize.height == 896
                                        ? getVerticalSize(15)
                                        : kSize.height == 844
                                            ? getVerticalSize(12)
                                            : kSize.height == 851
                                                ? getVerticalSize(10)
                                                : kSize.height == 915
                                                    ? getVerticalSize(15)
                                                    : getVerticalSize(34)),
                        Padding(
                          padding: EdgeInsets.only(
                              left: kSize.width == 412
                                  ? getHorizontalSize(40)
                                  : getHorizontalSize(50)),
                          child: Row(
                            children: [
                              CustomDivider(),
                              SizedBox(
                                width: getHorizontalSize(10),
                              ),
                              const Text(
                                'Or Sign in with',
                                style: TextStyle(
                                  fontFamily: 'Nunito',
                                  color: Color(0xff07a385),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              SizedBox(
                                width: getHorizontalSize(10),
                              ),
                              CustomDivider(),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: kSize.height < 820
                              ? getVerticalSize(8)
                              : kSize.height == 667
                                  ? getVerticalSize(0)
                                  : kSize.height == 896
                                      ? getVerticalSize(10)
                                      : kSize.height == 844
                                          ? getVerticalSize(5)
                                          : kSize.height == 851
                                              ? getVerticalSize(5)
                                              : kSize.height == 915
                                                  ? getVerticalSize(0)
                                                  : getVerticalSize(20),
                        ),
                        Padding(
                          padding: getPadding(
                            left: kSize.width == 414
                                ? getHorizontalSize(30)
                                : kSize.width == 412
                                    ? getHorizontalSize(30)
                                    : getHorizontalSize(45),
                            //right: getHorizontalSize(45),
                          ),
                          child: Row(
                            children: [
                              CustomSignupContainer(
                                  image: AppIcons.facebookIcon),
                              SizedBox(
                                width: getHorizontalSize(27),
                              ),
                              CustomSignupContainer(image: AppIcons.googleIcon),
                              SizedBox(
                                width: getHorizontalSize(26),
                              ),
                              CustomSignupContainer(image: AppIcons.appleIcon),
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
        });
  }
}
