import 'package:elearning_app/pages/sign_up/notifier/signup_notifier.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignupController {
  late WidgetRef ref;

  SignupController({required this.ref});

  void handleSignUp() {
    var state = ref.read(registerNotifierProvider);

    String name = state.userName;
    String email = state.email;

    String password = state.password;
    String rePassword = state.rePassword;

    print("Your name is $name");
    print("Your name is $email");
    print("Your name is $password");
    print("Your name is $rePassword");

    if (state.password != state.rePassword) {
      print("Your password doest not match");
    }
  }
}
