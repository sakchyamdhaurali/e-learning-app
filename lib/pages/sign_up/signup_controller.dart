import 'package:elearning_app/common/widgets/popup_message.dart';
import 'package:elearning_app/pages/sign_up/notifier/signup_notifier.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignupController {
  final WidgetRef ref;

  SignupController({required this.ref});

  void handleSignUp() async {
    var state = ref.read(registerNotifierProvider);

    String name = state.userName;
    String email = state.email;

    String password = state.password;
    String rePassword = state.rePassword;

    print("Your name is $name");
    print("Your email is $email");
    print("Your password is $password");
    print("Your rePassword is $rePassword");

    if (state.userName.isEmpty || name.isEmpty) {
      toastInfo(
        "Your Name is empty",
        backgroundColor: Colors.black,
        textColor: Colors.white,
      );
    }

    if (state.userName.length < 4 || name.length < 4) {
      toastInfo("Your username is too short");
      return;
    }

    if (state.email.isEmpty || email.isEmpty) {
      toastInfo("Your email is empty");
      return;
    }

    if (state.password.isEmpty ||
        state.rePassword.isEmpty ||
        password.isEmpty ||
        rePassword.isEmpty) {
      toastInfo("Your password is empty");
      return;
    }

    if (state.password != state.rePassword || password != rePassword) {
      toastInfo("Your password did not match");
      return;
    }

    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      if (kDebugMode) {
        print(credential);
      }

      if (credential.user != null) {
        await credential.user?.sendEmailVerification();
        await credential.user?.updateDisplayName(name);

      }
    } catch (e) {}
  }
}
