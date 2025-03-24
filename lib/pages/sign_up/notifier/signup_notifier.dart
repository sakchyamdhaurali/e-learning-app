import 'package:elearning_app/pages/sign_up/notifier/signup_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'signup_notifier.g.dart';
@riverpod
class RegisterNotifier extends _$RegisterNotifier {

  @override

  RegisterState build() {
    return RegisterState();
  }
}
