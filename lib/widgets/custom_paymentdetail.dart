import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:doc_app/utils/app_colors.dart';
import 'package:doc_app/utils/size_utils.dart';
import 'package:doc_app/utils/app_textstyle.dart';

class PaymentDetail extends GetView {
  const PaymentDetail({super.key, required this.number});
  final String number;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: getVerticalSize(208),
          width: getHorizontalSize(341),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Padding(
            padding: getPadding(
                top: getVerticalSize(19),
                left: getHorizontalSize(24),
                right: getHorizontalSize(24)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: getVerticalSize(23.6),
                  width: getHorizontalSize(39),
                  decoration: const BoxDecoration(
                    color: Color(0x1c14ff00),
                  ),
                  child: Center(
                      child: Text(
                    number,
                    style: const TextStyle(
                      fontFamily: 'OpenSans',
                      color: Color(0xff07a385),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                    ),
                  )),
                ),
                SizedBox(height: getVerticalSize(8)),
                const Text('Thursday, 17 February',
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      color: Color(0xff535353),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                    )),
                SizedBox(height: getVerticalSize(5)),
                const Row(
                  children: [
                    Text('Treat',
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          color: Color(0xff535353),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                        )),
                     Spacer(),
                    Text(
                      '900',
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        color: Color(0xff535353),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: getVerticalSize(5)),
                const Row(
                  children: [
                    Text('Payii',
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          color: Color(0xff535353),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                        )),
                     Spacer(),
                    Text(
                      '900',
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        color: Color(0xff535353),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: getVerticalSize(5)),
                const Row(
                  children: [
                    Text('Discount',
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          color: Color(0xff535353),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                        )),
                     Spacer(),
                    Text(
                      '800',
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        color: Color(0xff535353),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: getVerticalSize(5)),
                const Row(
                  children: [
                    Text('Previuos',
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          color: Color(0xff535353),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                        )),
                     Spacer(),
                    Text(
                      '700',
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        color: Color(0xff535353),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      ),
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
      ],
    );
  }
}
