import 'package:flutter/material.dart';
import 'package:naily/core/styles/button_gray_style.dart';
import 'package:naily/features/signup/components/signup_ui.dart';
import 'package:naily/pages/signup_page.dart';

class SignupButton extends StatelessWidget {
  const SignupButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: customGrayButtonStyle,
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => const SignupPage(),
        ));
      },
      child: const Text('新規会員登録'),
    );
  }
}