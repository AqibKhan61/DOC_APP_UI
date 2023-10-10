import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:doc_app/utils/app_colors.dart';
import 'package:doc_app/utils/size_utils.dart';


class AppointmentDetail extends GetView {
  AppointmentDetail({super.key, required this.text});
  String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: getVerticalSize(160),
          width: getHorizontalSize(341),
          decoration: BoxDecoration(
              color: AppColors.white, borderRadius: BorderRadius.circular(18)),
          child: Padding(
            padding: getPadding(
                left: getHorizontalSize(25),
                top: getVerticalSize(20),
                right: getHorizontalSize(25),
                bottom: getVerticalSize(21)),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text('DC -',
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    color: Color(0xff25a870),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                  )),
              Row(
                children: [
                  const Text(
                    'Patient',
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      color: Color(0xff535353),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 25,
                    width: 66,
                    decoration: const BoxDecoration(
                      color: Color(0x26ffa300),
                    ),
                    child: Center(
                        child: Text(text,
                            style: const TextStyle(
                              fontFamily: 'OpenSans',
                              color: Color(0xffebab5c),
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                            ))),
                  )
                ],
              ),
              Row(
                children: [
                  const Text(
                    'Doctor',
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      color: Color(0xff535353),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  SizedBox(
                    width: getHorizontalSize(192),
                  ),
                  const Text('Typ',
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        color: Color(0xff828282),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      ))
                ],
              ),
              const Spacer(),
              Container(
                height: getVerticalSize(34),
                width: getHorizontalSize(291),
                decoration: BoxDecoration(
                  color: AppColors.backgroungcolor,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                     Text('03 April,2022',
                        style: TextStyle(
                          fontFamily: 'Nexa',
                          color: Color(0xffabb1ad),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        )),
                     Text('Friday',
                        style: TextStyle(
                          fontFamily: 'Nexa',
                          color: Color(0xffabb1ad),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        )),
                    Text('7:00 PM',
                        style: TextStyle(
                          fontFamily: 'Nexa',
                          color: Color(0xffabb1ad),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        )),
                  ],
                ),
              )
            ]),
          ),
        ),
        SizedBox(
          height: getVerticalSize(20),
        ),
      ],
    );
  }
}
