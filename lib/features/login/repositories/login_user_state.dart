import 'package:firebase_auth/firebase_auth.dart';

Stream<bool> userState() {
  return FirebaseAuth.instance
      .authStateChanges()
      .map((User? user) => user != null);
}