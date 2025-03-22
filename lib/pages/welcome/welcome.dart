import 'package:elearning_app/common/widgets/text_widgets.dart';
import 'package:elearning_app/pages/welcome/widgets.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
    Welcome({super.key});
    final PageController _controller= PageController();

  @override
  Widget build(BuildContext context) {


    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              PageView(
                controller: _controller,
                //Pageview takes whole screen
                children: [
                  //firstpage
                  appOnBoardingPage(
                    _controller,
                    imagePath: "assets/images/reading.png",
                    title: "Welcome to E-Learning",
                    subTitle:
                        "This is an e-learning app where you can learn about Flutter in an easy way.",
                    index: 1,
                  ),
        
                  //secondpage
                  appOnBoardingPage(
                    _controller,
                    imagePath: "assets/images/man.png",
                    title: " Connect With Everyone ",
                    subTitle:
                        "You can always get connected with your friends and tutuor. Let's get connected!",
                    index: 2,
        
                  ),
        
                  //third page
                  appOnBoardingPage(
                    _controller,
                    imagePath: "assets/images/boy.png",
                    title: "Enhance Your Learning",
                    subTitle:
                        "Access a variety of courses, interactive lessons, and expert guidance to boost your knowledge.",
                    index: 3,
        
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
