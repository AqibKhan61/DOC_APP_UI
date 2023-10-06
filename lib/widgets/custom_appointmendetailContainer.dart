import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:doc_app/utils/app_colors.dart';
import 'package:doc_app/utils/size_utils.dart';
import 'package:doc_app/utils/app_textstyle.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppointmentDetail extends GetView {
  AppointmentDetail({super.key, required this.text});
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(160),
      width: getHorizontalSize(341),
      decoration: BoxDecoration(
          color: AppColors.white, borderRadius: BorderRadius.circular(18)),
      child: Padding(
        padding: getPadding(
            left: getHorizontalSize(25),
            top: getVerticalSize(20),
            right: getHorizontalSize(25),
            bottom: getVerticalSize(21)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('DC -',style: AppTextStyle.normalText.copyWith(color: AppColors.lightpurple),),
          Row(
            children: [
              Text(
                'Patient',
                style: AppTextStyle.normalText,
              ),
              Spacer(),
              Container(
                height: 25,
                width: 66,
                decoration: const BoxDecoration(
                  color: AppColors.backgroungcolor,
                ),
                child: Center(
                    child: Text(
                  text,
                  style:
                      AppTextStyle.normalText.copyWith(color: AppColors.orange),
                )),
              )
            ],
          ),
          Row(
            children: [
              Text('Doctor',style: AppTextStyle.normalText,),
              SizedBox(width: getHorizontalSize(192),),
              Text('TYP',style: AppTextStyle.normalText.copyWith(color: AppColors.lightpurple),)
            ],
          ),
          Spacer(),
          Container(
            height: getVerticalSize(34),
            width: getHorizontalSize(291),
            decoration: BoxDecoration(
              color: AppColors.backgroungcolor,
              borderRadius: BorderRadius.circular(7),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('03 April,2022',style: AppTextStyle.small,),
                Text('Friday',style: AppTextStyle.small,),
                Text('7:00 PM',style: AppTextStyle.small,),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
