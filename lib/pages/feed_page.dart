import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:naily/pages/login_page.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feed'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            // ここにログアウト処理を追加
            await FirebaseAuth.instance.signOut();
            context.go('/login');
          },
          child: const Text('ログアウト'),
        ),
      ),
    );
  }
}