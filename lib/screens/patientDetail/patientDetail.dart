import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:doc_app/utils/size_utils.dart';
import 'package:doc_app/utils/app_colors.dart';
import 'package:doc_app/routes/app_routes.dart';
import 'package:doc_app/widgets/custom_button.dart';
import 'package:doc_app/widgets/custom_appbar.dart';
import 'package:doc_app/widgets/custompatientDetail_textfield.dart';


class PatientDetailScreen extends GetView{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: 'Patient Detail',isImage: false),
      backgroundColor: AppColors.backgroungcolor,
      body: Padding(
        padding: getPadding(left: getHorizontalSize(23),right: getHorizontalSize(23),top: getVerticalSize(23)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: getVerticalSize(575),
                width: getHorizontalSize(329),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Padding(
                  padding: getPadding(left: getHorizontalSize(16),top: getVerticalSize(16),right: getHorizontalSize(16)),
                  child: Column(
                    children: [
                      PatientDetailTextField(title: 'Patient Drug'),
                      SizedBox(height: getVerticalSize(15),),
                      PatientDetailTextField(title: 'Patient Medical'),
                      SizedBox(height: getVerticalSize(15),),
                      PatientDetailTextField(title: 'Treatment'),
                      SizedBox(height: getVerticalSize(15),),
                      PatientDetailTextField(title: 'Reimbursemen'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: getVerticalSize(20),),
              CustomButton(text: 'Save-Detail', ontap: (){Get.toNamed(AppRoute.treatment);}),
            ],
          ),
        ),
      )
    );
  }
}