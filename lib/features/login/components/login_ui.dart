import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:naily/core/styles/button_pink_style.dart';
import 'package:naily/core/styles/input_style.dart';
import 'package:naily/core/theme/app_spacing.dart';
import 'package:naily/features/login/entities/login.dart';
import 'package:naily/features/login/providers/login_state.dart';
import 'package:naily/features/login/repositories/login_signin.dart';


class LoginUi extends ConsumerWidget {
  const LoginUi({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginState = ref.watch(loginProvider);
    final loginNotifier = ref.read(loginProvider.notifier);

    return Container(
      width: 300,
      child: Column(
        children: <Widget>[
          TextField(
            onChanged: loginNotifier.setEmail,
            decoration: customInputDecoration.copyWith(labelText: 'メールアドレス'),
          ),
          SizedBox(height: AppSpacing.sm),
          TextField(
            onChanged: loginNotifier.setPassword,
            obscureText: true,
            decoration: customInputDecoration.copyWith(labelText: 'パスワード'),
          ),
          SizedBox(height: AppSpacing.sm),
          TextButton(
            style: customPinkButtonStyle,
            onPressed: () async {
              loginNotifier.clearError();
              final loginEntity = LoginEntity(
                email: loginState.email,
                password: loginState.password,
              );

              final isSuccess = await signInWithEmail(
                loginEntity.email,
                loginEntity.password,
              );

              if (isSuccess) {
                context.go('/feed');
              } else {
                loginNotifier.setError('メールアドレスまたはパスワードが正しくありません');
              }
            },
            child: const Text('ログイン'),
          ),
          if (loginState.errorMessage != null)
            Text(
              loginState.errorMessage!,
              style: const TextStyle(color: Colors.red),
            ),
        ],
      ),
    );
  }
}
