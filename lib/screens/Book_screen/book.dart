import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:doc_app/utils/constant.dart';
import 'package:doc_app/utils/app_icons.dart';
import 'package:doc_app/utils/size_utils.dart';
import 'package:doc_app/utils/app_colors.dart';
import 'package:doc_app/routes/app_routes.dart';
import 'package:doc_app/utils/app_textstyle.dart';
import 'package:doc_app/widgets/custom_button.dart';
import 'package:doc_app/widgets/custom_appbar.dart';
import 'package:doc_app/widgets/custom_textfield.dart';

class BookScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
          isImage: true, title: 'BOOK', iconImage: AppIcons.fiterIcon),
      backgroundColor: AppColors.backgroungcolor,
      body: Padding(
        padding: getPadding(
            left: getHorizontalSize(17), right: getHorizontalSize(17),bottom: getVerticalSize(25)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: getVerticalSize(24),
              ),
              Container(
                height: getVerticalSize(541),
                width: getHorizontalSize(341),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Padding(
                  padding: getPadding(
                      left: getHorizontalSize(16), top: getVerticalSize(19)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Add',
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            color: Color(0xff07a385),
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal,
                          )),
                      SizedBox(
                        height: getVerticalSize(16),
                      ),
                      CustomTextField(
                        isTitle: true,
                        height: 37.0,
                        obscuretext: false,
                        title: 'Patient',
                      ),
                      SizedBox(
                        height: getVerticalSize(16),
                      ),
                      Text(
                        'Appoinment',
                        style: AppTextStyle.normalText,
                      ),
                      SizedBox(
                        width: getHorizontalSize(300),
                        height: 37.0,
                        child: DropdownButtonFormField(
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(
                                left: 15,
                                right: 10,
                              ),
                              suffixIconColor: AppColors.primary2,
                              filled: true,
                              fillColor: const Color(0xfff3f3f3),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide.none,
                              ),
                            ),
                            onChanged: (newValue) {
                              controller.onChange(newValue);
                            },
                            items: itemlist.map((value) {
                              return DropdownMenuItem(
                                value: value,
                                child: Text(value),
                              );
                            }).toList()),
                      ),
                      SizedBox(
                        height: getVerticalSize(16),
                      ),
                      CustomTextField(
                          isTitle: true,
                          obscuretext: false,
                          title: 'Date',
                          height: 37.0),
                      SizedBox(height: getVerticalSize(16)),
                      Text(
                        'Select',
                        style: AppTextStyle.normalText,
                      ),
                      SizedBox(
                        width: getHorizontalSize(300),
                        height: 37.0,
                        child: DropdownButtonFormField(
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(
                                left: 15,
                                right: 10,
                              ),
                              suffixIconColor: AppColors.primary2,
                              filled: true,
                              fillColor: const Color(0xfff3f3f3),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide.none,
                              ),
                            ),
                            onChanged: (newValue) {
                              controller.onChange(newValue);
                            },
                            items: itemlist.map((value) {
                              return DropdownMenuItem(
                                value: value,
                                child: Text(value),
                              );
                            }).toList()),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: getVerticalSize(46),
              ),
              CustomButton(
                  text: 'Submit',
                  ontap: () {
                    Get.toNamed(AppRoute.sarfara);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
