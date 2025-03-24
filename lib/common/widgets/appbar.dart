import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar buildAppBar(
  {
    required String text,
  
  }
) {
  return AppBar(
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(1.h),
      // ignore: deprecated_member_use
      child: Container(color: Colors.blueGrey.withOpacity(0.4), height: 1.h),
    ),
    title: Text(text),
  );
}