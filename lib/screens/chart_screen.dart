import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:doc_app/utils/size_utils.dart';
import 'package:doc_app/utils/app_colors.dart';
import 'package:doc_app/widgets/custom_row.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_charts/charts.dart';



class SplineChart extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
          onPressed: () {
            Get.bottomSheet(Container(
              height: getVerticalSize(631),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColors.white,
              ),
              child: Padding(
                padding: getPadding(
                    top: getVerticalSize(20),
                    left: getHorizontalSize(20),
                    right: getHorizontalSize(20),),
                  //  bottom: getVerticalSize(12)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Select protiens'),
                        Spacer(),
                        Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(child: Icon(Icons.add)),
                        )
                      ],
                    ),
                    SizedBox(height: getVerticalSize(15),),
                    Divider(),
                    SizedBox(height: getVerticalSize(10),),
                    CustomRow(text: 'Albano'),
                  ],
                ),
              ),
            ));
          },
          child: Text('Open-Sheet')),
    ));
  }
}
