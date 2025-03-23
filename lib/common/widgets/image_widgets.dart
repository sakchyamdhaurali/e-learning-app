import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget iconImage(
  {
  String imagePath =  "assets/icons/user.png", 
  double width= 48, 
  double height= 48}) {

  return Image.asset(
    imagePath.isEmpty? "assets/icons/user.png": imagePath,
    width: width.w,
    height: height.h,
    );
}
