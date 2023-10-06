import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:doc_app/utils/constant.dart';
import 'package:doc_app/utils/app_icons.dart';
import 'package:doc_app/utils/app_colors.dart';
import 'package:doc_app/utils/size_utils.dart';
import 'package:doc_app/routes/app_routes.dart';
import 'package:doc_app/utils/app_textstyle.dart';
import 'package:doc_app/widgets/custom_tabbar.dart';
import 'package:doc_app/widgets/custom_appbar.dart';
import 'package:doc_app/controllers/appoinment_controller.dart';
import 'package:doc_app/widgets/custom_appointmendetailContainer.dart';

class AppoinmentScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(isImage: true, title: 'Appoinment', iconImage: AppIcons.fiterIcon),
      backgroundColor: AppColors.backgroungcolor,
      body: GetBuilder(
          init: AppoinmentController(),
          builder: (controller) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: getVerticalSize(104),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: AppColors.white,
                    ),
                    child: Padding(
                      padding: getPadding(
                          left: getHorizontalSize(20),
                          top: getVerticalSize(05)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Total Appoinments',
                                style: AppTextStyle.normalText
                                    .copyWith(height: 0.5),
                              ),
                              SizedBox(
                                width: getHorizontalSize(170),
                              ),
                              Container(
                                height: getVerticalSize(24),
                                width: getHorizontalSize(38),
                                decoration: const BoxDecoration(
                                  color: AppColors.backgroungcolor,
                                ),
                                child: controller.index.value == 0
                                    ? Center(
                                        child: Text(
                                        '1',
                                        style: AppTextStyle.normalText,
                                      ))
                                    : Center(
                                        child: Text(
                                        '2',
                                        style: AppTextStyle.normalText,
                                      )),
                              )
                            ],
                          ),
                          SizedBox(
                            height: getVerticalSize(23),
                          ),
                          Row(
                            children: [
                              CustomTabbar(
                                  widthh: controller.index.value == 0 ? 2 : 1,
                                  ontap: () {
                                    controller.changeIndextoToday();
                                  },
                                  text: 'Todays App'),
                              Expanded(
                                child: CustomTabbar(
                                    widthh: controller.index.value == 1 ? 2 : 1,
                                    ontap: () {
                                      controller.changeIndextoUppcoming();
                                    },
                                    text: 'Uppcoming Apps'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: getVerticalSize(22)),
                  controller.index.value == 0
                      ? Column(
                          children: [
                            ListView.builder(
                                padding: const EdgeInsets.all(0),
                                shrinkWrap: true,
                                itemCount: docdetaillist.length,
                                itemBuilder: (context, index) {
                                  return AppointmentDetail(
                                      text: docdetaillist[index]);
                                }),
                          ],
                        )
                      : Column(
                          children: [
                            ListView.builder(
                                padding: const EdgeInsets.all(0),
                                shrinkWrap: true,
                                itemCount: docdetaillist2.length,
                                itemBuilder: (context, index) {
                                  return AppointmentDetail(
                                      text: docdetaillist2[index]);
                                }),
                          ],
                        )
                ],
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primary2,
        foregroundColor: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(30),
        ),
        onPressed: () {
          Get.toNamed(AppRoute.book);
        },
        child: AppIcons.addIcon,
      ),
    );
  }
}
