import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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

