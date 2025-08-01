import 'package:flutter/material.dart';
import 'package:naily/features/signup/components/signup_ui.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Signup Page')),
      body: Center(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 350),
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: SignupUi(), // 仮の中身
            ),
          ),
        ),
      ),
    );
  }
}