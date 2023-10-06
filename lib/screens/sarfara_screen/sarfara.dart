import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:doc_app/utils/app_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:doc_app/utils/size_utils.dart';
import 'package:doc_app/utils/app_colors.dart';
import 'package:doc_app/routes/app_routes.dart';
import 'package:doc_app/utils/app_textstyle.dart';
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
              right: getHorizontalSize(24)),
          child: Column(
            children: [
              Row(
                children: [
                  Text('DC',
                      style: AppTextStyle.small
                          .copyWith(color: AppColors.lightpurple)),
                  const Spacer(),
                  Text('Gender',
                      style: AppTextStyle.small
                          .copyWith(color: AppColors.lightpurple)),
                ],
              ),
              Row(
                children: [
                  Text(
                    'DC-131',
                    style: AppTextStyle.normalText,
                  ),
                  const Spacer(),
                  Text(
                    'Male',
                    style: AppTextStyle.normalText,
                  ),
                ],
              ),
              SizedBox(height: getVerticalSize(20)),
              Row(
                children: [
                  Text('Phone',
                      style: AppTextStyle.small
                          .copyWith(color: AppColors.lightpurple)),
                  const Spacer(),
                  Text('Age',
                      style: AppTextStyle.small
                          .copyWith(color: AppColors.lightpurple)),
                ],
              ),
              Row(
                children: [
                  Text(
                    '+92-354-1684577',
                    style: AppTextStyle.normalText,
                  ),
                  const Spacer(),
                  Text(
                    '35',
                    style: AppTextStyle.normalText,
                  ),
                ],
              ),
               SizedBox(height: getVerticalSize(20)),
               Row(children: [
                Text('Appoinment',style: AppTextStyle.small.copyWith(color: AppColors.lightpurple),),
                const Spacer(),
                Text('OL',style: AppTextStyle.normalText),
               ],),
                SizedBox(height: getVerticalSize(20)),
               Row(children: [
                Text('Appoinment',style: AppTextStyle.small.copyWith(color: AppColors.lightpurple),),
                const Spacer(),
                  Container(
                    height: getVerticalSize(22),
                    width: getHorizontalSize(60),
                    decoration: const BoxDecoration(
                      color: AppColors.lightgrey,
                    ),
                    child: Center(
                        child: Text(
                      'Waitin',
                      style:
                          AppTextStyle.normalText.copyWith(color: AppColors.orange),
                    )),
                  )
               ],),
                SizedBox(height: getVerticalSize(20)),
               Row(children: [
                Text('Total',style: AppTextStyle.small.copyWith(color: AppColors.lightpurple),),
                const Spacer(),
                Text('08',style: AppTextStyle.normalText),
               ],),
               SizedBox(height: getVerticalSize(30),),
               const Divider(color: AppColors.lightpurple,thickness: 0.4,),
               SizedBox(height: getVerticalSize(30),),
               Row(children: [
                SvgPicture.asset(AppIcons.patientIcon),
                SizedBox(width: getHorizontalSize(13),),
                Text('Patient',style: AppTextStyle.normalText,),
                const Spacer(),
                SvgPicture.asset(AppIcons.forwardArrow),
               ],),
               SizedBox(height: getVerticalSize(20),),
                 Row(children: [
                SvgPicture.asset(AppIcons.treatmentIcon),
                SizedBox(width: getHorizontalSize(13),),
                Text('Treatment',style: AppTextStyle.normalText,),
                const Spacer(),
                SvgPicture.asset(AppIcons.forwardArrow),
               ],),
               SizedBox(height: getVerticalSize(20),),
                 Row(children: [
                SvgPicture.asset(AppIcons.paymentIcon),
                SizedBox(width: getHorizontalSize(13),),
                Text('Payment',style: AppTextStyle.normalText,),
                const Spacer(),
                SvgPicture.asset(AppIcons.forwardArrow),
               ],),
               SizedBox(height: getVerticalSize(100),),
               CustomButton(text: 'Go-Next', ontap: (){Get.toNamed(AppRoute.patientDetail);}),

            ],
          ),
        ));
  }
}
