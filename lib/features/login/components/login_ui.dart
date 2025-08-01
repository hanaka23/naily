import 'package:flutter/material.dart';
import 'package:naily/core/components/pink_heart.dart';
import 'package:naily/core/styles/input_style.dart';
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
    return Column(
      mainAxisSize: MainAxisSize.min, // これが重要！
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const PinkHeart(),
        TextField(
          onChanged: (value) => email = value,
          decoration: customInputDecoration.copyWith(labelText: 'メールアドレス'),
        ),
        TextField(
          onChanged: (value) => password = value,
          decoration: customInputDecoration.copyWith(labelText: 'パスワード'),
          obscureText: true,
        ),
        TextButton(
          onPressed: () async {
            final loginEntity = LoginEntity(email: email, password: password);
            final isLoginSuccess = await signInWithEmail(loginEntity.email, loginEntity.password);
            if (isLoginSuccess) {
              if (!mounted) return;
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const FeedPage()),
                (route) => false,
              );
            } else {
              setState(() {
                errorMessage = 'メールアドレスまたはパスワードが正しくありません';
              });
            }
          },
          child: const Text('ログイン'),
        ),
        if (errorMessage != null)
          Text(
            errorMessage!,
            style: const TextStyle(color: Colors.red),
          ),
      ],
    );
  }
}
