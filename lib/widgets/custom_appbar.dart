import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:doc_app/utils/app_icons.dart';
import 'package:doc_app/utils/size_utils.dart';
import 'package:doc_app/utils/app_colors.dart';
import 'package:doc_app/utils/app_images.dart';
import 'package:doc_app/utils/app_textstyle.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomAppbar extends GetView implements PreferredSizeWidget {
  String title;
  final String ?iconImage;
  final Widget ?leading;
  CustomAppbar({super.key, required this.title, this.leading, this.iconImage});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 119,
        leading: leading,
        iconTheme: const IconThemeData(color: AppColors.white),
         flexibleSpace: Image.asset(
          AppImages.appBarimage,
          fit: BoxFit.cover,
        ),
        title: Padding(
          padding:  getPadding(left: getHorizontalSize(55)),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [   
          Text(title, style: AppTextStyle.appBarText),
          SizedBox(width: getHorizontalSize(110),),
          SvgPicture.asset(iconImage!),
               
            ],
          ),
        ),
      ),
    );
  }

  Size get preferredSize => const Size.fromHeight(119);
}
