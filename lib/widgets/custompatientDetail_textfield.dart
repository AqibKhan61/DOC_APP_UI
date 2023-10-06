import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:doc_app/utils/app_colors.dart';
import 'package:doc_app/utils/size_utils.dart';
import 'package:doc_app/utils/app_textstyle.dart';



class PatientDetailTextField extends GetView{
final String title;
PatientDetailTextField({super.key,required this.title});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: AppTextStyle.normalText,),
        SizedBox(height: getVerticalSize(5),),
        TextFormField(
          maxLines: 2,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              
              borderRadius: BorderRadius.circular(7),
              borderSide:  const BorderSide(color: AppColors.lightgrey,width: 0.1),
            ),

          ),
        )
      ],
    );
  }
}