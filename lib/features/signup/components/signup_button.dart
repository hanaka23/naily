import 'package:flutter/material.dart';
import 'package:naily/features/signup/components/signup_ui.dart';

class SignupButton extends StatelessWidget {
  const SignupButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => const SignupUi(),
                ));
              },
              child: const Text('アカウント登録'),
            );
  }
}