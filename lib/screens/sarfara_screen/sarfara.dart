import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:doc_app/utils/app_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:doc_app/utils/size_utils.dart';
import 'package:doc_app/utils/app_colors.dart';
import 'package:doc_app/routes/app_routes.dart';
import 'package:doc_app/widgets/custom_button.dart';
import 'package:doc_app/widgets/custom_appbar.dart';


class SarfaraScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbar(isImage: false, title: 'Sarfara'),
        backgroundColor: AppColors.backgroungcolor,
        body: Padding(
          padding: getPadding(
              left: getHorizontalSize(24),
              top: getVerticalSize(24),
              right: getHorizontalSize(24),
              bottom: getVerticalSize(50)
              ),
          child: Column(
            children: [
              const Row(
                children: [
                  Text('DC',
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        color: Color(0xff696768),
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      )),
                  Spacer(),
                  Text('Gender',
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        color: Color(0xff696768),
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      )),
                ],
              ),
              const Row(
                children: [
                  Text('DC-131',
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        color: Color(0xff474452),
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      )),
                  Spacer(),
                  Text('Mal',
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        color: Color(0xff474452),
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      )),
                ],
              ),
              SizedBox(height: getVerticalSize(20)),
              const Row(
                children: [
                  Text('Phone',
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        color: Color(0xff696768),
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      )),
                  Spacer(),
                  Text('Age',
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        color: Color(0xff696768),
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      )),
                ],
              ),
              const Row(
                children: [
                  Text(
                    '+92-354-1684577',
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      color: Color(0xff474452),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '35',
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      color: Color(0xff474452),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ],
              ),
              SizedBox(height: getVerticalSize(20)),
              const Row(
                children: [
                  Text('Appoinment',
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        color: Color(0xff696768),
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      )),
                  Spacer(),
                  Text('OL',
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        color: Color(0xff474452),
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      )),
                ],
              ),
              SizedBox(height: getVerticalSize(20)),
              Row(
                children: [
                  const Text('Appoinment',
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        color: Color(0xff696768),
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      )),
                 const Spacer(),
                  Container(
                    height: getVerticalSize(22),
                    width: getHorizontalSize(60),
                    decoration:  BoxDecoration(
                      color: const Color(0x26ffa300),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: const Center(
                        child: Text('Waitin',
                            style: TextStyle(
                              fontFamily: 'OpenSans',
                              color: Color(0xffebab5c),
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                            ))),
                  )
                ],
              ),
              SizedBox(height: getVerticalSize(20)),
              const Row(
                children: [
                  Text('Total',
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        color: Color(0xff696768),
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      )),
                  Spacer(),
                  Text('08',
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        color: Color(0xff474452),
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      )),
                ],
              ),
              SizedBox(
                height: getVerticalSize(30),
              ),
              const Divider(
                color: AppColors.lightpurple,
                thickness: 0.4,
              ),
              SizedBox(
                height: getVerticalSize(30),
              ),
              Row(
                children: [
                  SvgPicture.asset(AppIcons.patientIcon),
                  SizedBox(
                    width: getHorizontalSize(13),
                  ),
                  const Text(
                    'Patient',
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      color: Color(0xff000000),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  const Spacer(),
                  SvgPicture.asset(AppIcons.forwardArrow),
                ],
              ),
              SizedBox(
                height: getVerticalSize(20),
              ),
              Row(
                children: [
                  SvgPicture.asset(AppIcons.treatmentIcon),
                  SizedBox(
                    width: getHorizontalSize(13),
                  ),
                  const Text(
                    'Treatment',
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      color: Color(0xff000000),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  const Spacer(),
                  SvgPicture.asset(AppIcons.forwardArrow),
                ],
              ),
              SizedBox(
                height: getVerticalSize(20),
              ),
              Row(
                children: [
                  SvgPicture.asset(AppIcons.paymentIcon),
                  SizedBox(
                    width: getHorizontalSize(13),
                  ),
                  const Text(
                    'Payment',
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      color: Color(0xff000000),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  const Spacer(),
                  SvgPicture.asset(AppIcons.forwardArrow),
                ],
              ),
              // SizedBox(
              //   height: getVerticalSize(100),
              // ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: CustomButton(
                      text: 'Go-Next',
                      ontap: () {
                        Get.toNamed(AppRoute.patientDetail);
                      }),
                ),
              ),
            ],
          ),
        ));
  }
}
