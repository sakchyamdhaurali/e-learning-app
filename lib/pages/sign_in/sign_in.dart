import 'package:elearning_app/common/utils/app_colors.dart';
import 'package:elearning_app/common/widgets/appbar.dart';
import 'package:elearning_app/common/widgets/app_textfields.dart';
import 'package:elearning_app/common/widgets/button_widgets.dart';
import 'package:elearning_app/common/widgets/text_widgets.dart';
import 'package:elearning_app/pages/sign_in/widgets/sign_in_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: buildAppBar(text: "Login"),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //top third party login
                thirdPartyLogin(),
                //optional message for signin
                Center(
                  child: text43Normal(
                    text: "Or use your email account to login",
                    color: AppColors.primaryBg,
                  ),
                ),
                SizedBox(height: 150.h),
                //email text box
                appTextField(
                  text: "Email",
                  iconName: "",
                  hintText: "Enter you email",
                  hideText: false,
                ),

                SizedBox(height: 60.h),
                //password text box
                appTextField(
                  text: "Password",
                  iconName: "assets/icons/lock.png",
                  hintText: "Enter your password",
                  hideText: true,
                ),

                SizedBox(height: 60.h),

                Container(
                  margin: EdgeInsets.only(left: 90.w),
                  child: forgotText(text: "Forgot Password?"),
                ),

                SizedBox(height: 200.h),

                Center(child: appButton(buttonName: "Login")),
                SizedBox(height: 60.h),
                Center(
                  child: appButton(
                    buttonName: "Sign Up",
                    isLogin: false,
                    context: context,
                    func: () {
                      Navigator.pushNamed(context, "/signUp");
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
