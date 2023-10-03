import 'package:flutter/material.dart';
import 'package:doc_app/utils/app_colors.dart';


class AppTextStyle{

  static TextStyle heading1 = const TextStyle(
    color: AppColors.black,
    fontSize: 25,
    fontFamily: 'Outfit',

  );

   static TextStyle heading1withPC = const TextStyle(
    color:  Color(0xff59615d),
    fontSize: 25,
    fontFamily: 'Outfit',

  );

  static TextStyle heading2 = const TextStyle(
    color: AppColors.primary1,
    fontSize: 20,
    fontFamily: 'Outfit',
    fontWeight: FontWeight.bold,
  );
     static  TextStyle small = TextStyle(
    color: AppColors.primary2.withOpacity(0.6),
    fontSize: 13,
    fontFamily: 'Outfit',
    fontWeight: FontWeight.bold,
    
  );
}