import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:doc_app/utils/size_utils.dart';
import 'package:doc_app/widgets/custom_appbar.dart';
import 'package:doc_app/widgets/custom_paymentdetail.dart';


class PaymentScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: 'Payment'),
      body: Padding(
        padding: getPadding(
            top: getVerticalSize(30),
            left: getHorizontalSize(17),
            right: getHorizontalSize(17)),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return PaymentDetail(number: index.toString());
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
