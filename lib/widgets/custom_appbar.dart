import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:doc_app/utils/size_utils.dart';
import 'package:doc_app/utils/app_colors.dart';
import 'package:doc_app/utils/app_images.dart';
import 'package:doc_app/utils/app_textstyle.dart';



class CustomAppbar extends GetView implements PreferredSizeWidget {
  String title;
  String? iconImage;
  final bool isImage;
  final Widget ?leading;
  CustomAppbar({super.key, required this.title, this.leading, this.iconImage, this.isImage = false});
  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: kSize.height < 820 ? 115 : 119,
        leading: leading,
        actions: [
          Padding(
            padding: getPadding(right: getHorizontalSize(25)),
            child: isImage ? SvgPicture.asset(iconImage!):const SizedBox(),
          )
        ],
        iconTheme: const IconThemeData(color: AppColors.white),
         flexibleSpace: Image.asset(
          AppImages.appBarimage,
          fit: BoxFit.cover,
        ),
        title: Text(title,style: AppTextStyle.appBarText,),
        // title: Padding(
        //   padding:  getPadding(left: getHorizontalSize(55)),
        //   child: Row(
        //     //mainAxisAlignment: MainAxisAlignment.center,
        //     children: [   
        //   Text(title, style: AppTextStyle.appBarText),
        //   SizedBox(width: getHorizontalSize(110),),
        //   SvgPicture.asset(iconImage!),
               
        //     ],
        //   ),
        ),
      );
    
  }

  @override
  Size get preferredSize => const  Size.fromHeight(75);
}
