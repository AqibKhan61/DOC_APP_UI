import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:doc_app/utils/app_icons.dart';
import 'package:doc_app/utils/app_colors.dart';
import 'package:doc_app/utils/size_utils.dart';
import 'package:doc_app/utils/app_textstyle.dart';
import 'package:doc_app/widgets/custom_tabbar.dart';
import 'package:doc_app/widgets/custom_appbar.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:doc_app/controllers/appoinment_controller.dart';
import 'package:doc_app/widgets/custom_appointmendetailContainer.dart';

class AppoinmentScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: 'Appoinment', iconImage: AppIcons.fiterIcon),
      backgroundColor: AppColors.backgroungcolor,
      body: GetBuilder(
          init: AppoinmentController(),
          builder: (controller) {
            return Column(
              children: [
                Container(
                  height: getVerticalSize(102),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                  ),
                  child: Padding(
                    padding: getPadding(left: getHorizontalSize(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Total Appoinments',
                              style:
                                  AppTextStyle.normalText.copyWith(height: 0.5),
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
                              child: controller.index.value == 0 ? Center(
                                  child: Text(
                                '1',
                                style: AppTextStyle.normalText,
                              ))
                              :
                              Center(
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
                                ontap: () {
                                  controller.changeIndextoToday();
                                },
                                text: 'Todays App'),
                            Expanded(
                              child: CustomTabbar(
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
                          AppointmentDetail(
                            text: 'Attende',
                          ),
                          SizedBox(
                            height: getVerticalSize(20),
                          ),
                          AppointmentDetail(
                            text: 'Attende',
                          ),
                          SizedBox(
                            height: getVerticalSize(20),
                          ),
                          AppointmentDetail(
                            text: 'Attende',
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          AppointmentDetail(
                            text: 'Waitin',
                          ),
                          SizedBox(
                            height: getVerticalSize(20),
                          ),
                          AppointmentDetail(
                            text: 'Waitin',
                          ),
                          SizedBox(
                            height: getVerticalSize(20),
                          ),
                          AppointmentDetail(
                            text: 'Waitin',
                          ),
                        ],
                      )
              ],
            );
          }),
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
          ),
          backgroundColor: AppColors.primary2,
          foregroundColor: AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(30),
          ),
          onPressed: () {}),
    );
  }
}
