import 'package:elearning_app/common/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';

Widget text24Normal({
  required String text,
  Color color = AppColors.primaryText,
}) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontSize: 24,
      fontWeight: FontWeight.normal,
    ),
    textAlign: TextAlign.center,
  );
}

Widget text16Normal({required String text, Color color= AppColors.primarySecondaryElementText}) {
  return Text(
    text,
    style:  TextStyle(
      color: color,
      fontSize: 16,
      fontWeight: FontWeight.normal,
    ),
    textAlign: TextAlign.center,
  );
}
