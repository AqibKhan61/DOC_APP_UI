import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:doc_app/utils/app_colors.dart';
import 'package:doc_app/utils/size_utils.dart';
import 'package:doc_app/utils/app_textstyle.dart';

class TreatmentList extends GetView {
  final String text;
  const TreatmentList({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(85),
      width: double.infinity,
      decoration: const BoxDecoration(
          //color: AppColors.white,
          border: Border(
        top: BorderSide.none,
        left: BorderSide.none,
        right: BorderSide.none,
        bottom: BorderSide(color: AppColors.lightpurple, width: 0.3),
      )),
      child: Padding(
        padding: getPadding(
            top: getVerticalSize(21),
            left: getHorizontalSize(34),
            right: getHorizontalSize(34),
            bottom: getVerticalSize(21)),
        child: Column(
          children: [
            Row(
              children: [
                const Text('Services',
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      color: Color(0xff535353),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                    )),
                const Spacer(),
                Text(text,
                    style: const TextStyle(
                      fontFamily: 'OpenSans',
                      color: Color(0xff696768),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                    )),
              ],
            ),
            const Row(
              children: [
                Text(
                  'Price',
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    color: Color(0xff535353),
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                Spacer(),
                Text(
                  '3000/-',
                  style: TextStyle(
                    fontFamily: 'Nexa ',
                    color: Color(0xff07a385),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
