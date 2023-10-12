import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:doc_app/utils/size_utils.dart';
import 'package:doc_app/utils/app_textstyle.dart';

class CustomTextField extends GetView {
  final String? text;
  final String? title;
  final bool isTitle;
  bool obscuretext = false;
  var height;
  CustomTextField(
      {super.key,
      this.text,
      required this.obscuretext,
      this.height,
      this.title,
      this.isTitle = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        isTitle
            ? Text(
                title!,
                style: const TextStyle(
                  fontFamily: 'OpenSans',
                  color: Color(0xff535353),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                ),
              )
            : const SizedBox(),
        SizedBox(
          width: getHorizontalSize(300),
          height: height,
          child: TextFormField(
            obscureText: obscuretext,
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color(0xfff3f3f3),
              contentPadding: const EdgeInsets.only(
                left: 24,
                right: 14,
                bottom: 30,
              ),
              hintText: text,
              hintStyle: const TextStyle(
                fontFamily: 'OpenSans',
                color: Color(0xff8a8a8a),
                fontSize: 12,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
              ),

              // labelText: (lable.toString()),
              // labelStyle: AppTextStyle.normalText,
              focusedBorder: const OutlineInputBorder(),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
