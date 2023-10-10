import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:doc_app/utils/size_utils.dart';
import 'package:doc_app/controllers/appoinment_controller.dart';



class CustomTabbar extends GetView {
  VoidCallback ontap;
  String text;
  double widthh;
  double size;

  CustomTabbar(
      {super.key,
      required this.ontap,
      required this.text,
      required this.widthh,
      required this.size,
      });

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: AppoinmentController(),
        builder: (controller) {
          return Container(
            height: getVerticalSize(51),
            width: getHorizontalSize(187),
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(
              color: const Color(0xff07a385),
              width: widthh,
            ))),
            child: InkWell(
                onTap: ontap,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: getPadding(left: getVerticalSize(size)),
                      child: Text(
                        text,
                        style:  const TextStyle(
                          fontFamily: 'OpenSans',
                          color: Color(0xff535353),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ],
                )),
          );
        });
  }
}
