import 'package:elearning_app/common/widgets/app_shadow.dart';
import 'package:elearning_app/common/widgets/text_widgets.dart';
import 'package:flutter/material.dart';

Widget appOnBoardingPage(
  PageController controller, {
  required String imagePath,
  required title,
  required String subTitle,
  index = 0,
}) {
  return Column(
    children: [
      Image.asset(imagePath, fit: BoxFit.fitWidth),

      Container(
        margin: EdgeInsets.only(top: 15),
        child: text24Normal(text: title),
      ),

      Container(
        margin: EdgeInsets.only(top: 15),
        padding: EdgeInsets.only(left: 20, right: 20),
        child: text16Normal(text: subTitle),
      ),
      _nextButton(index, controller),
    ],
  );
}

Widget _nextButton(int index, PageController controller) {
  return GestureDetector(
    onTap: () {
      if (index < 3) {
        controller.animateToPage(
          index,
          duration: const Duration(milliseconds: 300),
          curve: Curves.linear,
        );
      }
      // Navigator.of(context).push(MaterialPageRoute(builder: builder))
      // print('tapped $index');
    },
    child: Container(
      margin: EdgeInsets.only(top: 100, left: 25, right: 25),
      width: 325,
      height: 50,
      decoration: appBoxShadow(),

      child: Center(child: text16Normal(text: "Next", color: Colors.white)),
    ),
  );
}
