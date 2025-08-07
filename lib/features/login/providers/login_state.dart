import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginState {
  final String email;
  final String password;
  final String? errorMessage;

  const LoginState({
    this.email = '',
    this.password = '',
    this.errorMessage,
  });
  /// 状態をコピーして、必要なフィールドだけを更新するメソッド
  LoginState copyWith({
    String? email,
    String? password,
    String? errorMessage,
  }) {
    return LoginState(
      // emailがnullならthis.emailを使う
      email: email ?? this.email,
      password: password ?? this.password,
      errorMessage: errorMessage,
    );
  }
}

class LoginNotifier extends StateNotifier<LoginState> {
  LoginNotifier() : super(const LoginState());

  void setEmail(String email) {
    state = state.copyWith(email: email);
  }

  void setPassword(String password) {
    state = state.copyWith(password: password);
  }

  void setError(String? error) {
    state = state.copyWith(errorMessage: error);
  }

  void clearError() {
    state = state.copyWith(errorMessage: null);
  }
}

final loginProvider = StateNotifierProvider<LoginNotifier, LoginState>((ref) {
  return LoginNotifier();
});
