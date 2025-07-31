import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart'; // 追加
import 'package:naily/features/login/repositories/login_user_state.dart';
import 'package:naily/pages/feed_page.dart';
import 'package:naily/pages/login_page.dart';
import 'core/datasources/firebase_options.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // 追加
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'naily',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      ),
      home: userState() ? const FeedPage() : const LoginPage(),
    );
  }
}
