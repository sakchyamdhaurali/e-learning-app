import 'package:elearning_app/common/widgets/app_shadow.dart';
import 'package:elearning_app/common/widgets/image_widgets.dart';
import 'package:elearning_app/common/widgets/text_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget appTextField({
  required String text,
  iconName,
  hintText,
  required bool hideText,
  void Function(String value)? func,
}) {
  return Container(
    padding: EdgeInsets.only(left: 90.w, right: 90.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        text43Normal(text: text),
        SizedBox(height: 10.h),
        Container(
          width: 1000.w,
          height: 150.h,
          decoration: appBoxShadowTextField(),
          //row contains icons and textfield
          child: Row(
            children: [
              //for showing icons
              Container(
                margin: EdgeInsets.only(left: 50.w),
                child: iconImage(imagePath: iconName),
              ),

              SizedBox(
                width: 850.w,
                height: 150.h,
                child: TextField(
                  onChanged: (value)=> func!(value),
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: hintText,
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                  maxLines: 1,
                  autocorrect: false,
                  obscureText: hideText,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
