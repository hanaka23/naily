import 'package:flutter/material.dart';
import 'package:naily/features/login/components/login_ui.dart';
import 'package:naily/features/signup/components/signup_button.dart';
import 'package:naily/features/signup/components/signup_ui.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Page')),
      body: Center(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 350),
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const LoginUi(),
                  SizedBox(height: 20),
                  SignupButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
