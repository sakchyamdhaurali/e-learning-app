import 'package:dots_indicator/dots_indicator.dart';
import 'package:elearning_app/pages/welcome/notifier/welcome_notifier.dart';
import 'package:elearning_app/pages/welcome/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// final indexProvider = StateProvider<int>((ref) => 0);

class Welcome extends ConsumerWidget {
  Welcome({super.key});
  final PageController _controller = PageController();
  // int dotsIndex = 0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // print('my dots index is $dotsIndex');
    final index = ref.watch(indexDotProvider);
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 30.h),
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Stack(
              alignment: Alignment.topCenter,
              children: [
                //showing three Welcome Pages
                PageView(
                  onPageChanged: (value) {
                    // dotsIndex = value;
                    // print("my index is $dotsIndex");
                    ref.read(indexDotProvider.notifier).changeIndex(value);
                  },
                  controller: _controller,
                  //Pageview takes whole screen
                  children: [
                    //firstpage
                    appOnBoardingPage(
                      _controller,context,
                      imagePath: "assets/images/reading.png",
                      title: "Welcome to E-Learning",
                      subTitle:
                          "This is an e-learning app where you can learn about Flutter in an easy way.",
                      index: 1,
                    ),

                    //secondpage
                    appOnBoardingPage(
                      _controller, context,
                      imagePath: "assets/images/man.png",
                      title: " Connect With Everyone ",
                      subTitle:
                          "You can always get connected with your friends and tutuor. Let's get connected!",
                      index: 2,
                    ),

                    //third page
                    appOnBoardingPage(
                      _controller,context,
                      imagePath: "assets/images/boy.png",
                      title: "Enhance Your Learning",
                      subTitle:
                          "Access a variety of courses, interactive lessons, and expert guidance to boost your knowledge.",
                      index: 3,
                    ),
                  ],
                ),

                //showing three dots
                Positioned(
                  bottom: 180.h,
                  child: DotsIndicator(
                    dotsCount: 3,
                    position: index.toDouble(),
                    animate: true,
                    animationDuration: Duration(milliseconds: 400),
                    mainAxisAlignment: MainAxisAlignment.center,
                    decorator: DotsDecorator(
                      size: const Size.square(9),
                      activeSize: Size(18, 8),
                      activeColor: Colors.blue,
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.w),
                      ),
                    ),
                  ),
                ),

                Positioned(
                  top: 15.h,
                  right: 70.w,
                  child: skipButton(context),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
