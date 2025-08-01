import 'package:flutter/material.dart';
import 'package:naily/core/styles/button_gray_style.dart';
import 'package:naily/core/styles/button_pink_style.dart';
import 'package:naily/core/styles/input_style.dart';
import 'package:naily/features/signup/entities/signup.dart';
import 'package:naily/features/signup/repositories/signup_repository.dart';
import 'package:naily/pages/feed_page.dart';

class SignupUi extends StatefulWidget {
  const SignupUi({super.key});

  @override
  State<SignupUi> createState() => _SignupUiState();
}

class _SignupUiState extends State<SignupUi> {
  String email = '';
  String password = '';
  String? errorMessage;
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            onChanged: (value) {
              email = value;
            },
            decoration: customInputDecoration.copyWith(labelText: 'メールアドレス'),
          ),
          TextField(
            onChanged: (value) {
              password = value;
            },
            decoration: customInputDecoration.copyWith(labelText: 'パスワード'),
            obscureText: true,
          ),
          TextButton(
            style: customPinkButtonStyle,
            onPressed: () async {
              final signupEntity = SignupEntity(email: email, password: password);
              final isSignupSuccess = await createUserWithEmailAndPassword(signupEntity.email, signupEntity.password);
              if (isSignupSuccess) {
                if (!mounted) return;
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FeedPage(),
                  ),
                  (Route<dynamic> route) => false,
                );
              } else {
                setState(() {
                  errorMessage = 'メールアドレスまたはパスワードが正しくありません';
                });
              }
            },
            child: const Text('新規会員登録'),
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