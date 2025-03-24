import 'package:elearning_app/pages/sign_up/notifier/signup_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'signup_notifier.g.dart';

@riverpod
class RegisterNotifier extends _$RegisterNotifier {
  @override
  RegisterState build() {
    return RegisterState();
  }

  void onUserNameChanged(String name) {
    state = state.copyWith(userName: name);
  }

  void onUserEmailChanged(String email) {
    state = state.copyWith(email: email);
  }

  void onUserPasswordChanged(String password) {
    state = state.copyWith(password: password);
  }

  void onUserrePasswordChanged(String rePassword) {
    state = state.copyWith(rePassword: rePassword);
  }
}
