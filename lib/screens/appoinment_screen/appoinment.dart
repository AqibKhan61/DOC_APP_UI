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
    final kSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppbar(
          isImage: true, title: 'Appoinment', iconImage: AppIcons.fiterIcon),
      backgroundColor: AppColors.backgroungcolor,
      body: GetBuilder(
          init: AppoinmentController(),
          builder: (controller) {
            return Column(
              children: [
                Container(
                  height: kSize.height == 896
                      ? getVerticalSize(113)
                      : kSize.height == 844
                          ? getVerticalSize(113)
                          : kSize.height == 851 ? getVerticalSize(113)
                          : kSize.height == 915 ? getVerticalSize(113)
                          : kSize.height == 914 ? getVerticalSize(113)
                          : getVerticalSize(110),
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
                        Center(
                          child: Padding(
                            padding: getPadding(top: getVerticalSize(7)),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text('Total Appoinments',
                                    style: TextStyle(
                                      fontFamily: 'OpenSans',
                                      color: Color(0xff535353),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FontStyle.normal,
                                    )),
                                SizedBox(
                                  width: kSize.width == 414
                                      ? getHorizontalSize(185)
                                      : getHorizontalSize(170),
                                ),
                                Container(
                                  height: getVerticalSize(24),
                                  width: getHorizontalSize(39),
                                  decoration: const BoxDecoration(
                                    color: Color(0x1c14ff00),
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
                          ),
                        ),
                        SizedBox(
                          height: getVerticalSize(23),
                        ),
                        Row(
                          children: [
                            CustomTabbar(
                                size: 0.0,
                                widthh: controller.index.value == 0 ? 2 : 1,
                                ontap: () {
                                  controller.changeIndextoToday();
                                },
                                text: 'Today\'s  App'),
                            Expanded(
                              child: CustomTabbar(
                                  size: 45.0,
                                  widthh: controller.index.value == 1 ? 2 : 1,
                                  ontap: () {
                                    controller.changeIndextoUppcoming();
                                  },
                                  text: 'Uppcoming'),
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
                          SizedBox(
                            height: getVerticalSize(540),
                            child: ListView.builder(
                                padding: const EdgeInsets.all(0),
                                shrinkWrap: true,
                                itemCount: docdetaillist.length,
                                itemBuilder: (context, index) {
                                  return AppointmentDetail(
                                      text: docdetaillist[index]);
                                }),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          SizedBox(
                            height: getVerticalSize(540),
                            child: ListView.builder(
                                padding: const EdgeInsets.all(0),
                                shrinkWrap: true,
                                itemCount: docdetaillist2.length,
                                itemBuilder: (context, index) {
                                  return AppointmentDetail(
                                      text: docdetaillist2[index]);
                                }),
                          ),
                        ],
                      )
              ],
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
