import 'package:elearning_app/common/utils/app_colors.dart';
import 'package:elearning_app/common/widgets/appbar.dart';
import 'package:elearning_app/common/widgets/app_textfields.dart';
import 'package:elearning_app/common/widgets/button_widgets.dart';
import 'package:elearning_app/common/widgets/text_widgets.dart';
import 'package:elearning_app/pages/sign_up/notifier/signup_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp extends ConsumerWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final regNotifier = ref.watch(registerNotifierProvider);
    //regProvider

    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: buildAppBar(text: "Sign Up"),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 100.h),
                //optional message for signin
                Center(
                  child: text43Normal(
                    text: "Enter your details below & sign up",
                    color: AppColors.primaryBg,
                  ),
                ),
                SizedBox(height: 100.h),
                //username text box
                appTextField(
                  text: "Username",
                  iconName: "",
                  hintText: "Enter your username",
                  hideText: false,
                  func: (value)=> ref.read(registerNotifierProvider.notifier).onUserNameChanged(value),
                ),

                SizedBox(height: 60.h),

                appTextField(
                  text: "Email",
                  iconName: "assets/icons/user.png",
                  hintText: "Enter your email",
                  hideText: false,
                  func: (value)=> ref.read(registerNotifierProvider.notifier).onUserEmailChanged(value),
                ),

                SizedBox(height: 60.h),
                //password text box
                appTextField(
                  text: "Password",
                  iconName: "assets/icons/lock.png",
                  hintText: "Enter your password",
                  hideText: true,
                  func: (value)=> ref.read(registerNotifierProvider.notifier).onUserPasswordChanged(value),
                
                ),

                SizedBox(height: 60.h),

                appTextField(
                  text: "Confirm Password",
                  iconName: "assets/icons/lock.png",
                  hintText: "Confirm your password",
                  hideText: true,
                  func: (value)=> ref.read(registerNotifierProvider.notifier).onUserrePasswordChanged(value),
                
                  
                ),

                Container(
                  margin: EdgeInsets.only(left: 90.w, right: 90.w, top: 50.h),

                  child: text43Normal(
                    text:
                        "By creating an account, you have to agree with our terms and conditions.",
                    color: AppColors.primaryBg,
                  ),
                ),

                SizedBox(height: 250.h),

                Center(
                  child: appButton(
                    buttonName: "Sign Up",
                    context: context,
                    isLogin: true,
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
