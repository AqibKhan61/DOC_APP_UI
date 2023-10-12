import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:doc_app/utils/app_images.dart';
import 'package:doc_app/routes/app_routes.dart';
import 'package:doc_app/utils/app_textstyle.dart';



class StartScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    final kSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: kSize.height*0.08, left: kSize.width*0.12,right: kSize.width*0.12),
            // padding: getPadding(
            //   top: getVerticalSize(60),
            //   left: getHorizontalSize(41),
            //   right: getHorizontalSize(65),
            // ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text('Welcome to',
                  style: TextStyle(
                    fontFamily: 'Nexa',
                    color: Color(0xff000000),
                    fontSize: 27,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.normal,
                  )),

              const Text(
                'Doctor Appoinment',
                style: TextStyle(
                  //height: 0.8,
                  fontFamily: 'OpenSens',
                  color: Color(0xff4b9d91),
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.normal,
                ),
              ),
              // Container(
              //   height: getVerticalSize(110),
              //   width: getHorizontalSize(278),
              //   //color: Colors.red,
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.end,
              //     children: [
              //       SvgPicture.asset(AppIcons.welcome,fit: BoxFit.scaleDown,),
              //     ],
              //   ),

              // ),
              SizedBox(
                height: kSize.height*0.02,
              ),
              Text(
                'Tell the scheduler if you need a physical exam. Mention if you have a sore back, sore throat, etc.',
                style: AppTextStyle.small
                    .copyWith(color: const Color(0xffa6a6a6)),
              ),
            ]),
          ),
          SizedBox(
            height: kSize.height*0.08,
          ),
          Expanded(
            child: Container(
              //height: getVerticalSize(521),
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.startscreenimage),
                  fit: BoxFit.fill,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(bottom: kSize.height*0.06),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Get.offNamed(AppRoute.signIn);
                      },
                      child: const Text(
                        'NEXT  >',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
