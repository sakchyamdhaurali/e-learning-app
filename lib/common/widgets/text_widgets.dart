import 'package:elearning_app/common/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget text24Normal({
  required String text,
  Color color = AppColors.primaryText,
}) {
  return Text(
    text,
    style: TextStyle(color: color, fontSize: 24, fontWeight: FontWeight.normal),
    textAlign: TextAlign.center,
  );
}

Widget text16Normal({
  required String text,
  Color color = AppColors.primarySecondaryElementText,
}) {
  return Text(
    text,
    style: TextStyle(color: color, fontSize: 16, fontWeight: FontWeight.normal),
    textAlign: TextAlign.center,
  );
}

Widget text43Normal({required String text, Color color = Colors.black}) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontSize: 43.sp,
      fontWeight: FontWeight.normal,
    ),
    textAlign: TextAlign.center,
  );
}

Widget forgotText({required String text, color = AppColors.primaryText}) {
  return GestureDetector(
    onTap: () {
      print("tapped");
    },
    child: Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: 40.sp,
        fontWeight: FontWeight.normal,
        decoration: TextDecoration.underline,
        decorationColor: AppColors.primaryText 
      ),
    ),
  );
}
