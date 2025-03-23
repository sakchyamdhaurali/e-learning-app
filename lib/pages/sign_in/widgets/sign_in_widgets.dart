import 'package:elearning_app/common/widgets/app_shadow.dart';
import 'package:elearning_app/common/widgets/image_widgets.dart';
import 'package:elearning_app/common/widgets/text_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar buildAppBar() {
  return AppBar(
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(1.h),
      child: Container(color: Colors.blueGrey, height: 1.h),
    ),
    backgroundColor: Colors.white,
    title: Text("Login"),
  );
}

Widget thirdPartyLogin() {
  return Container(
    margin: EdgeInsets.only(
      top: 140.h,
      left: 250.w,
      right: 250.w,
      bottom: 60.h,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _partyLoginButton(imagePath: "assets/icons/google.png"),
        _partyLoginButton(imagePath: "assets/icons/apple.png"),
        _partyLoginButton(imagePath: "assets/icons/facebook.png"),
      ],
    ),
  );
}

Widget _partyLoginButton({required String imagePath}) {
  return GestureDetector(
    onTap: () {},
    child: SizedBox(height: 120.h, width: 120.w, child: Image.asset(imagePath)),
  );
}

Widget appTextField(
   
  {required String text,iconName, hintText, required bool hideText}
  ) {
  return Container(
    padding: EdgeInsets.only(left: 90.w,right: 90.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        text43Normal(text: text,),
        SizedBox(height: 10.h,),
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
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  hintText: hintText, 
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  )
                ),
                maxLines: 1,
                autocorrect: false,
                obscureText: hideText,
                onChanged: (value) {
                
                },
              ),
            ),
          ],
         ),
          ),

      ],
    ),
  );
}
