import 'package:elearning_app/common/widgets/app_shadow.dart';
import 'package:elearning_app/common/widgets/text_widgets.dart';
import 'package:elearning_app/pages/sign_in/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget appOnBoardingPage(
  PageController controller,
  BuildContext context, {
  required String imagePath,
  required title,
  required String subTitle,
  index = 0,
}) {
  return Column(
    children: [
      Image.asset(imagePath, fit: BoxFit.fitWidth),

      Container(
        margin: EdgeInsets.only(top: 100.h),
        child: text24Normal(text: title),
      ),

      Container(
        margin: EdgeInsets.only(top: 25.h),
        padding: EdgeInsets.only(left: 50.w, right: 50.w),
        child: text16Normal(text: subTitle),
      ),
      _nextButton(index, controller, context),
      // _skipButton(),
    ],
  );
}

Widget _nextButton(int index, PageController controller, BuildContext context) {
  return GestureDetector(
    onTap: () {
      if (index < 3) {
        controller.animateToPage(
          index,
          duration: const Duration(milliseconds: 300),
          curve: Curves.linear,
        );
      } else {
        Navigator.pushNamed(context, "/signIn");
        // Navigator.of(
        //   context,
        // ).push(MaterialPageRoute(builder: (context) => SignIn()));
      }
      // print('tapped $index');
    },
    child: Container(
      margin: EdgeInsets.only(top: 300.h, left: 25.w, right: 25.w),
      width: 1000.w,
      height: 180.h,
      decoration: appBoxShadow(),

      child: Center(
        child: text16Normal(
          text: index < 3 ? "Next" : "Get Started",
          color: Colors.white,
        ),
      ),
    ),
  );
}

Widget skipButton(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.of(
        context,
      ).push(MaterialPageRoute(builder: (BuildContext context) => SignIn()));
    },
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 100.h,
          width: 100.w,
          child: Text(
            "Skip",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        Icon(Icons.arrow_right),
      ],
    ),
  );
}
