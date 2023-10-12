import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:doc_app/utils/size_utils.dart';
import 'package:doc_app/utils/app_images.dart';
import 'package:doc_app/routes/app_routes.dart';
import 'package:doc_app/utils/app_textstyle.dart';
import 'package:doc_app/widgets/custom_textfield.dart';
import 'package:doc_app/widgets/Custom_signIn_Button.dart';
import 'package:doc_app/widgets/custom_bottombarImage.dart';

class SignInScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: kSize.height == 667
                  ? getVerticalSize(260)
                  : getVerticalSize(280),
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.signInimage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                  left: getHorizontalSize(34),
                  right: getHorizontalSize(39),
                  // bottom: kSize.height == 820
                  //     ? getVerticalSize(42)
                  //     : kSize.height == 896
                  //         ? getVerticalSize(0)
                  //         : kSize.height == 844
                  //             ? getVerticalSize(0)
                  //             : kSize.height == 740
                  //                 ? getVerticalSize(0)
                  //                 : kSize.height == 915
                  //                     ? getVerticalSize(10)
                  //                     : kSize.height < 820
                  //                         ? getVerticalSize(0)
                  //                         : getVerticalSize(10)
                  ),
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
                          text: 'in',
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            color: Color(0xff4b9d91),
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ])),
                  SizedBox(
                    height: kSize.height == 896
                        ? getVerticalSize(6)
                        : getVerticalSize(12),
                  ),
                  Text(
                    'Please Enter Your Credentials to',
                    style: AppTextStyle.small,
                  ),
                  SizedBox(
                    height: kSize.height < 820
                        ? getVerticalSize(40)
                        : kSize.height == 667
                            ? getVerticalSize(10)
                            : kSize.height == 896
                                ? getVerticalSize(50)
                                : getVerticalSize(59),
                  ),
                  CustomTextField(
                    isTitle: false,
                    text: 'Please Enter E-mail',
                    obscuretext: false,
                  ),
                  SizedBox(
                    height: getVerticalSize(12),
                  ),
                  CustomTextField(
                      isTitle: false, text: 'Password', obscuretext: true),
                  SizedBox(
                    height: getVerticalSize(15),
                  ),
                  Padding(
                    padding: getPadding(
                      right: getHorizontalSize(39),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forgot',
                          style: TextStyle(
                            fontFamily: 'OpenSens',
                            color: Color(0xff383e47),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   height: getVerticalSize(64),
                  // ),
                  // ElevatedButton(
                  //   style: ButtonStyle(
                  //       padding: MaterialStatePropertyAll(
                  //         EdgeInsets.only(
                  //          left: getHorizontalSize(119),
                  //            right: getHorizontalSize(119),
                  //           top: getVerticalSize(12),
                  //           bottom: getVerticalSize(12),
                  //         ),
                  //       ),
                  //       backgroundColor: const MaterialStatePropertyAll(
                  //         AppColors.buttoncolor,
                  //       ),
                  //       shape:
                  //           MaterialStateProperty.all<RoundedRectangleBorder>(
                  //               RoundedRectangleBorder(
                  //                   borderRadius: BorderRadius.circular(10)))),
                  //   onPressed: () {
                  //     Get.toNamed(AppRoute.signUp);
                  //   },
                  //   child: Text(
                  //     'Sign in',
                  //     style:
                  //         AppTextStyle.heading2.copyWith(color: Colors.white),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: getPadding(
                  // top: kSize.height < 820
                  //     ? getVerticalSize(40)
                  //     : kSize.height == 844
                  //         ? getVerticalSize(40)
                  //         : kSize.height == 851
                  //             ? getVerticalSize(40)
                  //             : kSize.height == 667
                  //                 ? getVerticalSize(10)
                  //                 : kSize.height == 915
                  //                     ? getVerticalSize(50)
                  //                     :
                  // top: getVerticalSize(64),
                  // bottom: getVerticalSize(42)),
                  //child:
                  SizedBox(height: getVerticalSize(30),),
                  SignInButton(
                      text: 'Sign in',
                      onTap: () {
                        Get.toNamed(AppRoute.signUp);
                      }),
                  SizedBox(
                      // height: kSize.height == 667
                      //     ? getVerticalSize(10)
                      //     : kSize.height < 820 ? getVerticalSize(10)
                      //     :
                      height: getVerticalSize(20)),
                  const Center(
                    child: Text.rich(TextSpan(
                        text: 'Dont have An Account?  ',
                        style: TextStyle(
                          fontFamily: 'OpenSens',
                          color: Color(0xff383e47),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                        ),
                        children: <InlineSpan>[
                          TextSpan(
                            text: 'Sign up',
                            style: TextStyle(
                              fontFamily: 'OpenSens',
                              color: Color(0xff4b9d91),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                            ),
                          )
                        ])),
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
