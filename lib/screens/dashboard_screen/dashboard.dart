import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:doc_app/utils/constant.dart';
import 'package:doc_app/utils/app_icons.dart';
import 'package:doc_app/utils/app_colors.dart';
import 'package:doc_app/utils/size_utils.dart';
import 'package:doc_app/utils/app_images.dart';
import 'package:doc_app/routes/app_routes.dart';
import 'package:doc_app/widgets/custom_bottombar.dart';
import 'package:doc_app/widgets/custom_dashboard_doclist.dart';
import 'package:doc_app/widgets/custom_dashboard_container.dart';

class DashboardScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.backgroungcolor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: getVerticalSize(200),
              decoration: BoxDecoration(
                //color: Color(0xff07a385),
                image: DecorationImage(
                    image: AssetImage(AppImages.dashboard), fit: BoxFit.cover),
                borderRadius:
                    const BorderRadius.only(bottomRight: Radius.circular(80)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Get.toNamed(AppRoute.signUp);
                    },
                    child: Padding(
                      padding: getPadding(
                          top: getVerticalSize(67),
                          left: kSize.width == 360
                              ? getHorizontalSize(12)
                              : getHorizontalSize(24)),
                      child: const Icon(Icons.arrow_back,
                          color: AppColors.white, size: 20),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: getHorizontalSize(50), top: getVerticalSize(35)),
                    child: Row(
                      children: [
                        Container(
                          height: getVerticalSize(50),
                          width: getHorizontalSize(50),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(AppImages.profileImage),
                                fit: BoxFit.scaleDown),
                          ),
                        ),
                        SizedBox(
                          width: getHorizontalSize(10),
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Good',
                              style: TextStyle(
                                fontFamily: 'OpenSans',
                                color: Color(0x9cffffff),
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            Text('Muhammad Bilal',
                                style: TextStyle(
                                  fontFamily: 'OpenSans',
                                  color: AppColors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: getVerticalSize(23),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: getHorizontalSize(25),
                right: kSize.width == 360
                    ? getHorizontalSize(15)
                    : getHorizontalSize(24),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'What do you',
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      color: Color(0xff000000),
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  SizedBox(
                    height: getVerticalSize(25),
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.toNamed(AppRoute.appoinment);
                        },
                        child: CustomDashoardContainer(
                            color: const Color(0xff948bff),
                            text: 'Appoitnment',
                            iconImage: AppIcons.stethoscopeIcon),
                      ),
                      SizedBox(
                        width: getHorizontalSize(16),
                      ),
                      CustomDashoardContainer(
                          color: const Color(0xffff7854),
                          text: 'Dental',
                          iconImage: AppIcons.teethIcon),
                    ],
                  ),
                  SizedBox(
                    height: getVerticalSize(16),
                  ),
                  Row(
                    children: [
                      CustomDashoardContainer(
                          color: const Color(0xfffea725),
                          text: 'Up Coming Ap.',
                          iconImage: AppIcons.appoinmentIcon),
                      SizedBox(
                        width: getHorizontalSize(16),
                      ),
                      CustomDashoardContainer(
                          color: const Color(0xff68eebe),
                          text: 'Leggers',
                          iconImage: AppIcons.dollarIcon),
                    ],
                  ),
                  SizedBox(
                    height: getVerticalSize(21),
                  ),
                  const Text('Top Doctors',
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        color: Color(0xff25282b),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      )),
                  SizedBox(
                    height: getVerticalSize(16),
                  ),
                  ListView.builder(
                      padding: const EdgeInsets.all(0),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return CustomDoctorsList(
                            docImage: items[index].docimage,
                            docName: items[index].docName,
                            docdetail: items[index].detailtext,
                            color: items[index].starcolor);
                      })
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
