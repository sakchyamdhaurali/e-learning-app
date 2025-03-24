class RegisterState {
  final String userName;
  final String email;
  final String password;
  final String rePassword;

  //constructor with default values
  RegisterState({
    this.userName = "",
    this.email = "",
    this.password = "",
    this.rePassword = "",
  });

//copyWith method to use the previous stored value if value is not passed
  RegisterState copyWith({
    String? userName,
    String? email,
    String? password,
    String? rePassword,
  }) {
    return RegisterState(
      userName: userName ??this.userName,
      email: email?? this.email,
      password: password?? this.password,
      rePassword: rePassword?? this.rePassword,
    );
  } 
}
