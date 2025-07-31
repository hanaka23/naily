import 'package:flutter/material.dart';
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
  bool isLogin = false;
  String? errorMessage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              onChanged: (value) {
                email = value;
              },
              decoration: const InputDecoration(
                labelText: 'メールアドレス',
              ),
            ),
            TextField(
              onChanged: (value) {
                password = value;
              },
              decoration: const InputDecoration(
                labelText: 'パスワード',
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                isLogin = await signInWithEmail(email, password);
                if (isLogin) {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FeedPage(),
                    ),
                    // 遷移先でログイン画面に戻れないようにする
                    (Route<dynamic> route) => false,
                  );
                } else {
                  errorMessage = 'メールアドレスまたはパスワードが正しくありません';
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
        ),
      ),
    );
  }
}