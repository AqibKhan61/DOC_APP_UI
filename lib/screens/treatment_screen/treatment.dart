import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:doc_app/utils/constant.dart';
import 'package:doc_app/utils/size_utils.dart';
import 'package:doc_app/utils/app_colors.dart';
import 'package:doc_app/routes/app_routes.dart';
import 'package:doc_app/widgets/custom_button.dart';
import 'package:doc_app/widgets/custom_appbar.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:doc_app/widgets/custom_treatmentList.dart';



class TreatmentScreen extends GetView{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: 'Treatment',isImage: false,),
      backgroundColor: AppColors.backgroungcolor,
      body: Padding(
        padding: getPadding(bottom: getVerticalSize(38)),
        child: Column(
          children: [
            ListView.builder(
              padding: const EdgeInsets.all(0),
              itemCount: treatmentList.length,
              shrinkWrap: true,
              itemBuilder: (context, index){
                return TreatmentList(text: treatmentList[index]);
              }),
              SizedBox(height: getVerticalSize(50),),
              Expanded(child: Align(
                alignment: Alignment.bottomCenter,
                child: CustomButton(text: 'Save', ontap: (){Get.toNamed(AppRoute.payment);}))),
          ],
        ),
      ),
    );
  }
}