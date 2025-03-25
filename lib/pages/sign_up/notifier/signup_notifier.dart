import 'package:elearning_app/pages/sign_up/notifier/signup_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'signup_notifier.g.dart';

@riverpod
class RegisterNotifier extends _$RegisterNotifier {
  @override
  RegisterState build() {
    return RegisterState();
  }

  void onUserNameChange(String name) {
    state = state.copyWith(userName: name);
  }

  void onUserEmailChange(String email) {
    state = state.copyWith(email: email);
  }

  void onUserPasswordChange(String password) {
    state = state.copyWith(password: password);
  }

  void onUserrePasswordChange(String rePassword) {
    state = state.copyWith(rePassword: rePassword);
  }
}
