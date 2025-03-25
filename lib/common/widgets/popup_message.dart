import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
//positional optional parameter
toastInfo(
  String msg,
  {
    Color backgroundColor = Colors.red,
    Color textColor = Colors.white,
  }

) {
  return Fluttertoast.showToast(
    msg: msg,
    toastLength:  Toast.LENGTH_SHORT,
    timeInSecForIosWeb: 2,
    fontSize: 50.sp,
    gravity: ToastGravity.TOP,
    backgroundColor: backgroundColor,
    textColor: textColor,

    );

}
