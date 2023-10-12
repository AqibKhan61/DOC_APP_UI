import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';



class CustomRow extends GetView{
  String ?text;
  CustomRow({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text!),
        Spacer(),
        Radio(value: true, groupValue: 1, onChanged: (value){}),
      ],
    );
  }
}