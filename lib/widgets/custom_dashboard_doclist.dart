import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:doc_app/utils/app_images.dart';
import 'package:doc_app/utils/app_colors.dart';
import 'package:doc_app/utils/size_utils.dart';
import 'package:doc_app/utils/app_textstyle.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomDoctorsList extends GetView {
  String docName;
  String docdetail;
  Color color;
  CustomDoctorsList({super.key,required this.docName,required this.docdetail,required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: getVerticalSize(75),
        width: getHorizontalSize(327),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Padding(
          padding: getPadding(
            left: getHorizontalSize(05),
          ),
          child: Row(
            children: [
              Container(
                height: getVerticalSize(60),
                width: getHorizontalSize(70),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(AppImages.profileImage))),
              ),
              SizedBox(
                width: getHorizontalSize(10),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    docName,
                    style: AppTextStyle.heading2,
                  ),
                  Text(
                    docdetail,
                    style: AppTextStyle.small.copyWith(height: 0.3),
                  ),
                  SizedBox(
                    height: getVerticalSize(12),
                  ),
                  Row(
                    children:  [
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 18,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 18,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 18,
                      ),
                       Icon(
                        Icons.star,
                        color: color,
                        size: 18,
                      ),
                       Icon(
                        Icons.star,
                        color: color,
                        size: 18,
                      ),
                      SizedBox(width: getHorizontalSize(8),),
                      Text('(730)',style: AppTextStyle.small,)
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }
}
