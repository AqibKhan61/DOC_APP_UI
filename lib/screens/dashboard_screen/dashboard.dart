import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:doc_app/utils/constant.dart';
import 'package:doc_app/utils/app_icons.dart';
import 'package:doc_app/utils/app_colors.dart';
import 'package:doc_app/utils/size_utils.dart';
import 'package:doc_app/utils/app_images.dart';
import 'package:doc_app/routes/app_routes.dart';
import 'package:doc_app/utils/app_textstyle.dart';
import 'package:doc_app/widgets/custom_bottombar.dart';
import 'package:doc_app/widgets/custom_dashboard_doclist.dart';
import 'package:doc_app/widgets/custom_dashboard_container.dart';

class DashboardScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: getVerticalSize(200),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppImages.appBarimage), fit: BoxFit.fill),
                borderRadius:
                    const BorderRadius.only(bottomRight: Radius.circular(80)),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    left: getHorizontalSize(60), top: getVerticalSize(110)),
                child: Row(
                  children: [
                    Container(
                      height: getVerticalSize(66),
                      width: getHorizontalSize(60),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(AppImages.profileImage),
                            fit: BoxFit.scaleDown),
                      ),
                    ),
                    SizedBox(
                      width: getHorizontalSize(10),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Good',
                          style: AppTextStyle.heading2.copyWith(
                            color: AppColors.lightgrey,
                          ),
                        ),
                        Text(
                          'Muhammad Bilal',
                          style: AppTextStyle.heading2
                              .copyWith(color: AppColors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: getVerticalSize(15),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: getHorizontalSize(25),
                //right: getHorizontalSize(25),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'What Do You',
                    style: AppTextStyle.heading2,
                  ),
                  SizedBox(
                    height: getVerticalSize(10),
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: (){
                          Get.toNamed(AppRoute.appoinment);
                        },
                        child: CustomDashoardContainer(
                            color: Colors.blue,
                            text: 'Appoinment',
                            iconImage: AppIcons.stethoscopeIcon),
                      ),
                      SizedBox(
                        width: getHorizontalSize(10),
                      ),
                      CustomDashoardContainer(
                          color: Colors.red,
                          text: 'Dental',
                          iconImage: AppIcons.teethIcon),
                    ],
                  ),
                  SizedBox(
                    height: getVerticalSize(15),
                  ),
                  Row(
                    children: [
                      CustomDashoardContainer(
                          color: Colors.yellow,
                          text: 'Up Coming Ap.',
                          iconImage: AppIcons.appoinmentIcon),
                      SizedBox(
                        width: getHorizontalSize(10),
                      ),
                      CustomDashoardContainer(
                          color: Colors.grey,
                          text: 'Leggers',
                          iconImage: AppIcons.dollarIcon),
                    ],
                  ),
                  SizedBox(
                    height: getVerticalSize(8),
                  ),
                  Text(
                    'Top Doctors',
                    style: AppTextStyle.heading2
                        .copyWith(fontWeight: FontWeight.normal),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: getHorizontalSize(5)),
                    child: ListView.builder(
                      padding: const EdgeInsets.all(0),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                        itemCount: items.length,
                        itemBuilder: (context, index) {
                          return CustomDoctorsList(
                              docName: items[index].docName,
                              docdetail: items[index].detailtext,
                              color: items[index].starcolor);
                        }),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}
