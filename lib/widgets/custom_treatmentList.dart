import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:doc_app/utils/app_colors.dart';
import 'package:doc_app/utils/size_utils.dart';
import 'package:doc_app/utils/app_textstyle.dart';




class TreatmentList extends GetView{
final String text;
const TreatmentList({super.key,required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(85),
      width: double.infinity,
      decoration:  const BoxDecoration(
        //color: AppColors.white,
        border: Border(
          top: BorderSide.none,left: BorderSide.none,right: BorderSide.none,bottom: BorderSide(color: AppColors.lightpurple,width: 0.3),
        )
      ),
      child: Padding(
        padding: getPadding(top: getVerticalSize(21),left: getHorizontalSize(34),right: getHorizontalSize(34),bottom: getVerticalSize(21)),
        child: Column(
          children: [
            Row(
              children: [
                Text('Services',style: AppTextStyle.normalText,),
                const Spacer(),
                Text(text,style: AppTextStyle.normalText),
              ],
            ),
            Row(
              children: [
                Text('Price',style: AppTextStyle.normalText,),
                const Spacer(),
                Text('3000/-',style: AppTextStyle.small,)
              ],
            )
          ],
        ),
      ),
    );
  }
}