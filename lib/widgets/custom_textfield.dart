import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:doc_app/utils/app_textstyle.dart';




class CustomTextField extends GetView{
  final String text;
  bool obscuretext = false;
  var height;
  CustomTextField({super.key, required this.text, required this.obscuretext, this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: height,
      child: TextFormField(
        obscureText: obscuretext,
        decoration: InputDecoration( 
          filled: true,
          fillColor: const Color(0xfff3f3f3),
          contentPadding: const EdgeInsets.only(left: 15,right: 14,bottom: 20,),
          hintText: text,hintStyle: AppTextStyle.small,
          focusedBorder: const OutlineInputBorder(),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(5),
            
          ),
        ),
      ),
    );
  }
}