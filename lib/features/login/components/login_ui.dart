import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:naily/core/styles/button_pink_style.dart';
import 'package:naily/core/styles/input_style.dart';
import 'package:naily/core/theme/app_spacing.dart';
import 'package:naily/features/login/entities/login.dart';
import 'package:naily/features/login/repositories/login_signin.dart';
import 'package:naily/pages/feed_page.dart';

class LoginUi extends StatefulWidget {
  const LoginUi({super.key});

  @override
  State<LoginUi> createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
  String email = '';
  String password = '';
  String? errorMessage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Column(
        children: <Widget>[
          TextField(
            onChanged: (value) => email = value,
            decoration: customInputDecoration.copyWith(labelText: 'メールアドレス'),
          ),
      
          SizedBox(height: AppSpacing.sm),
      
          TextField(
            onChanged: (value) => password = value,
            decoration: customInputDecoration.copyWith(labelText: 'パスワード'),
            obscureText: true,
          ),
      
          SizedBox(height: AppSpacing.sm),
      
          TextButton(
            style: customPinkButtonStyle,
            child: const Text('ログイン'),
      
            onPressed: () async {
              final loginEntity = LoginEntity(email: email, password: password);
              final isLoginSuccess = await signInWithEmail(loginEntity.email, loginEntity.password);
              if (isLoginSuccess) {
                if (!mounted) return;
                context.go('/feed');
              } else {
                setState(() {
                  errorMessage = 'メールアドレスまたはパスワードが正しくありません';
                });
              }
            },
          ),
          if (errorMessage != null)
            Text(
              errorMessage!,
              style: const TextStyle(color: Colors.red),
            ),
        ],
      ),
    );
  }
}
