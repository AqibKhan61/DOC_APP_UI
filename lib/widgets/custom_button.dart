import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:doc_app/utils/app_colors.dart';

class CustomButton extends GetView {
  final String text;
  VoidCallback ontap;

  CustomButton({super.key, required this.text, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ontap,
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          AppColors.primary2,
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(color: AppColors.white),
      ),
    );
  }
}
