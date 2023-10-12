import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:doc_app/utils/app_colors.dart';
import 'package:doc_app/utils/size_utils.dart';
import 'package:doc_app/utils/app_textstyle.dart';

class CustomDoctorsList extends GetView {
  String docName;
  String docdetail;
  Color color;
  String docImage;
  CustomDoctorsList({
    super.key,
    required this.docName,
    required this.docdetail,
    required this.color,
    required this.docImage,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: getVerticalSize(95),
            width:  getHorizontalSize(327),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Padding(
              padding: getPadding(
                left: getHorizontalSize(12),
                top: getVerticalSize(10),
              ),
              child: Row(
                children: [
                  Container(
                    height: getVerticalSize(64),
                    width: getHorizontalSize(70),
                    decoration: BoxDecoration(
                        color: AppColors.backgroungcolor,
                        borderRadius: BorderRadius.circular(9),
                        image: DecorationImage(
                            image: AssetImage(docImage),
                            fit: BoxFit.scaleDown)),
                  ),
                  SizedBox(
                    width: getHorizontalSize(14),
                  ),
                  Padding(
                    padding: getPadding(top: getVerticalSize(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          docName,
                          style: AppTextStyle.heading2
                              .copyWith(fontSize: 16, color: const Color(0xff404345)),
                        ),
                        Text(
                          docdetail,
                          style: AppTextStyle.small
                              .copyWith(height: 0.7, color: const Color(0xffaaaaaa)),
                        ),
                        SizedBox(
                          height: getVerticalSize(14),
                        ),
                        Row(
                          children: [
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
                            const Icon(
                              Icons.star_border,
                              color: AppColors.backgroungcolor,
                              size: 18,
                            ),
                            const Icon(
                              Icons.star_border,
                              color: AppColors.backgroungcolor,
                              size: 18,
                            ),
                            SizedBox(
                              width: getHorizontalSize(8),
                            ),
                            Text(
                              '(730)',
                              style: AppTextStyle.small,
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )),
        SizedBox(
          height: getVerticalSize(12),
        )
      ],
    );
  }
}
